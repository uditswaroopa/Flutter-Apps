import 'package:firebase_auth/firebase_auth.dart';
import 'package:quotes/models/user.dart';
import 'package:quotes/services/database.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create firebase user to User
  User _fromFirebaseUser(FirebaseUser user){
    if(user != null)
      return User(uid: user.uid);
    else
      return null;
  }

  //authchange sign in sign out #lesson7
  Stream<User> get user{
    return _auth.onAuthStateChanged
    // .map((FirebaseUser user) => _fromFirebaseUser(user));
    .map(_fromFirebaseUser);
  }

  //signin anonymously
  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _fromFirebaseUser(user);
    }
    catch(e){
      print('Exception caught');
      return null;
    }
  }

  //sign with email and password
  Future signInEmailPassword(String e, String p) async {
    try{
      AuthResult _result = await _auth.signInWithEmailAndPassword(email: e, password: p);
      FirebaseUser user = _result.user;
      return _fromFirebaseUser(user);
    }catch(e){
      print(e.toString());
    }
  }

  //register with email and password
  Future registerWithEmailAndPassword(String e, String p) async {
    try{
      AuthResult _result = await _auth.createUserWithEmailAndPassword(email:e,password:p);
      FirebaseUser user = _result.user;
      await DatabaseService(uid: user.uid).updateData('0','New Brew',100);
      return _fromFirebaseUser(user);
    }catch(e){
      print(e.toString());
    }
  }


  //signout
  Future logOut() async{
    try{
      return await _auth.signOut();
    }
    catch(e){
      return null;
    }
  }
}
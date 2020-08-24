import 'package:firebase_auth/firebase_auth.dart';
import 'package:quotes/models/user.dart';

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

  //sign with email id

  //register

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
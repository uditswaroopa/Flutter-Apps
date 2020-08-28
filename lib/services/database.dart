
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final CollectionReference brew = Firestore.instance.collection('brew');
  String uid;

  DatabaseService({this.uid});

  Future updateData(String sugar,String name,int strength) async{
    return await brew.document(uid).setData({
      'sugar' : sugar,
      'name' : name,
      'strength': strength
    });
  }

  //brewStream
  Stream<QuerySnapshot> get brewstream{
    return brew.snapshots();
  }
}
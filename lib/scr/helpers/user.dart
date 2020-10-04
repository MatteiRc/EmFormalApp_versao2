import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/scr/modelos/user.dart';

class UserServices {
  String collection = "users";
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void createUser(Map<String, dynamic> valores){
      String id = valores["id"];
      _firestore.collection(collection).doc(id).set(valores);

  }

  void updateUserData(Map<String, dynamic> valores){
    _firestore.collection(collection).doc(valores['id']).update(valores);
  }

  Future<UserModel> getUserById(String id) => _firestore.collection(collection).doc(id).get().then((doc){
    return UserModel.fromSnapshot(doc);
  });
}
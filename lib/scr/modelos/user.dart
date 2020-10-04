import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class UserModel{
  static const NOME = "nome";
  static const EMAIL = 'email';
  static const ID = "id";

  String _nome;
  String _email;
  String _id;

  String get nome => _nome;
  String get email => _email;
  String get id => _id;

  UserModel.fromSnapshot(DocumentSnapshot snapshot){
        _nome  = snapshot.get(NOME);
        _email =snapshot.get(EMAIL);
        _id = snapshot.get(ID);
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/scr/helpers/user.dart';
import 'package:flutter_app/scr/modelos/user.dart';

enum Status{Uninitialized, Unauthenticated, Authenticating, Authenticated}

class AuthProvider with ChangeNotifier{
  FirebaseAuth _auth;
  User _user;
  Status _status = Status.Uninitialized;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  UserServices _userServices = UserServices();
  UserModel _userModel;

  //getters
  Status get status => _status;

  User get user => _user;

  final formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController senha = TextEditingController();

  AuthProvider.initialize(): _auth = FirebaseAuth.instance{
    _auth.authStateChanges().listen(_onStateChanged);
  }

  Future<bool> signIn() async{
    try{
      _status = Status.Authenticating;
      notifyListeners();
      await  _auth.signInWithEmailAndPassword(email: email.text, password: senha.text);
      return true;
    }catch(e){
        _status = Status.Unauthenticated;
        notifyListeners();
        print("error:" + e.toString());
        return false;
    }
  }

  Future<void> _onStateChanged(User firebaseUser) async{
      if(firebaseUser == null){
        _status = Status.Uninitialized;
      }else{
        _user = firebaseUser;
        _status = Status.Authenticated;
        _userModel = await _userServices.getUserById(firebaseUser.uid);
      }
      notifyListeners();
  }
}
import 'package:cleanliness_app/form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Log_in_page.dart';


class AuthService {
  handleAuth(){
    return StreamBuilder(builder: (context,snapshot){
      if (snapshot.hasData){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> form())) ;
        return form();
      }
      else{
        return Clogin();
      }
    });
  }
  SignIn(email,password){
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((user){
      print("signed in");
    }).catchError((e){
      print(e);
    });
  }
}

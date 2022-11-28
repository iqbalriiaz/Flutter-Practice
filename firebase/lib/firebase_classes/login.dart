
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/signup_page.dart';

class FirebaseLogin {
  login(email, password ) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: email,
          password: password,);

      // if(credential != null){
      //   final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
      //
      // }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}

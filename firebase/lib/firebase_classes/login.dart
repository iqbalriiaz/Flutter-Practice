
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/home_page.dart';

class FirebaseLogin {
  login(email, password, context ) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: email,
          password: password,);

        if (credential != null) {
          Navigator.pushReplacement(
              context,
              PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: HomePage()));
        }


    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');

        var snackBar = SnackBar(
            content: Text("email not registered."));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user.');

        var snackBar = SnackBar(
            content: Text("Wrong password provided."));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}

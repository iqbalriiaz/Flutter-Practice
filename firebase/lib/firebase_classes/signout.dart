import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/login_page.dart';

signOut(context) async {
  await FirebaseAuth.instance.signOut();

  var firebaseUser = FirebaseAuth.instance.currentUser;
  if(firebaseUser != null){

  }
  else{
    Navigator.pushReplacement(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft,
            child: LoginPage()));
  }
}
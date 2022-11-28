import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication{
  signup(email, password) async{
    try {
       UserCredential credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

       User? userAuthCredential = credential.user;
       if(userAuthCredential!.uid.isNotEmpty){
         return "data found";
       }
       else{
         return "data not found";
       }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }

  }
}


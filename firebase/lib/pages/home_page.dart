import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello, You have logged in",style:
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),

            ElevatedButton(onPressed: () async {
              await FirebaseAuth.instance.signOut();
            }, child: Text(
              "Logout"
            ))
          ],
        ),
      ),
    );
  }
}

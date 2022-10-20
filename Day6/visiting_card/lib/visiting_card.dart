import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisitingCardUi extends StatelessWidget {
  const VisitingCardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 81, 94),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 100,
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/174/174872.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome to Spotify",
              style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              leading: Icon(Icons.email),
              title: Text("Email"),
              tileColor: Color.fromARGB(255, 153, 154, 158),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              leading: Icon(Icons.lock),
              title: Text("Password"),
              tileColor: Color.fromARGB(255, 153, 154, 158),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                title: Text(
                  "login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                tileColor: Color.fromARGB(255, 78, 109, 235),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Don't have an account? Sign up",
              style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

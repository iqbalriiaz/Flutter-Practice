import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello Riaz"),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.black54, offset: Offset(5, 2))],
            border: Border.all(color: Colors.black, width: 1),
            gradient: const LinearGradient(colors: [
              Color(0xff7B1FA2),
              Colors.blueAccent,
              Colors.lightGreenAccent
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            // borderRadius: BorderRadius.circular(20)
            //shape: BoxShape.circle
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        padding: const EdgeInsets.all(25),
        height: 250,
        width: double.infinity,
        // ignore: prefer_const_constructors
        child: Text(
          "Iqbal Riaz",
          maxLines: 10,
          // textAlign: TextAlign.right,
          // ignore: prefer_const_constructors
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 50,
            fontWeight: FontWeight.bold,
            // wordSpacing: 15,
            // letterSpacing: 10,
          ),
        ),
      ),
    );
  }
}

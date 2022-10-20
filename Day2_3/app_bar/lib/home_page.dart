import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        leading: const Icon(Icons.menu,color: Colors.white),
        title: const Text("Home Page"),
        actions: const [Icon(Icons.more_vert)],
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase/blog/details.dart';
import 'package:firebase/blog/gallery.dart';
import 'package:firebase/blog/popular.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final myPages = [Details(), Gallery(), Popular()];
int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(items: [
        Icon(Icons.home, size: 30),
        Icon(Icons.list, size: 30),
        Icon(Icons.settings, size: 30),
      ],
        onTap: (index){
        setState(() {
          indexPage = index;
        });
        } ,
      ),
      body: myPages[indexPage]
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  File? imageFile;

  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.only(top: 30, left: 40, right: 40),
              child: OutlinedButton(
                onPressed: () {
                  _getFromGallery();
                },
                child: Text(
                  'Select from Gallery',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Color.fromARGB(255, 108, 109, 109)),
              )),
          Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.only(top: 40, left: 40, right: 40),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Pick from Camera',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Color.fromARGB(255, 108, 109, 109)),
              ))
        ],
      ),
    );
  }
}

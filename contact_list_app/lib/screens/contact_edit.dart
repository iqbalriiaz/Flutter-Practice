import 'dart:io';

import 'package:contact_list_app/dbHelper/my_db_helper.dart';
import 'package:contact_list_app/models/contact_model.dart';

import 'package:contact_list_app/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ContactEdit extends StatefulWidget {
  // const ContactEdit({Key? key}) : super(key: key);
  ContactModel? contactModel;

  ContactEdit({super.key});

  @override
  State<ContactEdit> createState() => _ContactEditState();
}

class _ContactEditState extends State<ContactEdit> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  String? dob;
  String? gender;
  String? image;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Contact"), centerTitle: true),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      imageFile == null
                          ? CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://st.depositphotos.com/2218212/2938/i/450/depositphotos_29387653-stock-photo-facebook-profile.jpg'),
                          )
                          : Container(
                        color: Colors.transparent,
                        child: ClipOval(

                          child: Image.file(
                            imageFile!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: -25,
                          child: RawMaterialButton(
                            onPressed: () {
                              add_Image();
                            },
                            elevation: 2.0,
                            fillColor: Color(0xFFF5F6F9),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.blue,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )),
                    ],
                  ),
                ),
              ),
              MyTextFormField(
                  myController: _nameController,
                  fieldInputType: TextInputType.text,
                  fieldName: "Name",
                  fieldIcon: Icons.person,
                  prefixIconColor: Colors.blue),
              MyTextFormField(
                  myController: _phoneController,
                  fieldInputType: TextInputType.number,
                  fieldName: "Phone",
                  fieldIcon: Icons.call,
                  prefixIconColor: Colors.blue),
              MyTextFormField(
                  myController: _addressController,
                  fieldInputType: TextInputType.text,
                  fieldName: "Address",
                  fieldIcon: Icons.home,
                  prefixIconColor: Colors.blue),

              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Card(
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: _selectDate,
                          child: Text("Select Date of Birth")),
                      Text(dob == null? "No Data Selected":dob!)

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  child: SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () async {
                          // Navigator.pop(context);
                          MyDbHelper.insertingToContactTable(ContactModel(
                            name: _nameController.text,
                            phone: _phoneController.text,
                            address: _addressController.text,
                          ));
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(elevation: 10),
                        child: Text("Save")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 void  _selectDate() async {
    final selectDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());
    if(selectDate != null){
      setState(() {
       dob = DateFormat("dd/MM/yyyy").format(selectDate);
      });
    }
  }

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
    setState(() {
      imageFile = File(pickedFile!.path);
    });
  }

  _getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
    setState(() {
      imageFile = File(pickedFile!.path);
    });
  }

  add_Image() {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Container(
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)),
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
                        backgroundColor:
                        Color.fromARGB(255, 108, 109, 109)),
                  )),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: OutlinedButton(
                    onPressed: () {
                      _getFromCamera();
                    },
                    child: Text(
                      'Pick from Camera',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor:
                        Color.fromARGB(255, 108, 109, 109)),
                  ))
            ],
          ),
        ));
  }

}

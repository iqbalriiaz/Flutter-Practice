import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {Key? key,
      required this.myController,
      required this.fieldName,
      required this.fieldIcon,
      required this.prefixIconColor,
      required this.fieldInputType})
      : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final TextInputType fieldInputType;
  final IconData fieldIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter some text";
          }
          return null;
        },
        controller: myController,
        keyboardType: fieldInputType,
        decoration: InputDecoration(
            labelText: fieldName,
            prefixIcon: Icon(fieldIcon, color: prefixIconColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            labelStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }
}

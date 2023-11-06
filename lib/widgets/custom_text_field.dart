import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.onChanged ,this.inputType, this.obscureText =false});
  Function(String)? onChanged;
  String? hintText;
TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText:obscureText!,

      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        // hintStyle: TextStyle(
        //   color: Colors.white,
        // ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
    
          ),
        ),
      ),
    );
  }
}

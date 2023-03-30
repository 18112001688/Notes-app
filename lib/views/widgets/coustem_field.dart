import 'package:flutter/material.dart';
import 'package:notes_app/constant/constant.dart';

class CoustemTextField extends StatelessWidget {
  const CoustemTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          color: primaryColor,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}

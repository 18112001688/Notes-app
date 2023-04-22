import 'package:flutter/material.dart';
import 'package:notes_app/constant/constant.dart';

class CoustemTextField extends StatelessWidget {
  const CoustemTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        // check if the value is null
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: primaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: primaryColor,
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}

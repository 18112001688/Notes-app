import 'package:flutter/material.dart';

import 'package:notes_app/constant/constant.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: primaryColor,
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      child: const Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

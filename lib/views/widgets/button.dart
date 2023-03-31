import 'package:flutter/material.dart';

import 'package:notes_app/constant/constant.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
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

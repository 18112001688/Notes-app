import 'package:flutter/material.dart';

import 'package:notes_app/constant/constant.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.onPressed, this.isLoading = false});
  final VoidCallback onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: primaryColor,
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      child: isLoading
          ? const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 2,
              ),
            )
          : const Text(
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

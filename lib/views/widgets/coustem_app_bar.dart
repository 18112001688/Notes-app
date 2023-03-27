import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/coustem_search_button.dart';

class CoustemAppBar extends StatelessWidget {
  const CoustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        CoustemSerarchButton()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/coustem_search_button.dart';

class CoustemAppBar extends StatelessWidget {
  const CoustemAppBar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        CoustemSerarchButton(icon: icon)
      ],
    );
  }
}

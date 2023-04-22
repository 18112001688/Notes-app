import 'package:flutter/material.dart';

class CoustemSerarchButton extends StatelessWidget {
  const CoustemSerarchButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}

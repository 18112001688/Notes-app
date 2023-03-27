import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoustemSerarchButton extends StatelessWidget {
  const CoustemSerarchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}

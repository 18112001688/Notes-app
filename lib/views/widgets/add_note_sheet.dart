import 'package:flutter/material.dart';
import 'package:notes_app/constant/constant.dart';
import 'package:notes_app/views/widgets/coustem_field.dart';

import 'button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CoustemTextField(hintText: 'Title'),
            SizedBox(
              height: 16,
            ),
            CoustemTextField(hintText: 'content', maxLines: 5),
            SizedBox(
              height: 30,
            ),
            AddButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

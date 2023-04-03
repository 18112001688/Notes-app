import 'package:flutter/material.dart';

import 'coustem_app_bar.dart';
import 'coustem_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 12, left: 12),
        child: Column(
          children: const [
            CoustemAppBar(
              icon: Icons.check,
              title: 'Edit Notes',
            ),
            SizedBox(
              height: 50,
            ),
            CoustemTextField(hintText: 'Edit note'),
            SizedBox(
              height: 20,
            ),
            CoustemTextField(
              maxLines: 5,
              hintText: 'Content',
            )
          ],
        ),
      ),
    );
  }
}

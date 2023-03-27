import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/coustem_app_bar.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 12, left: 12),
      child: Column(
        children: const [
          CoustemAppBar(),
          SizedBox(
            height: 20,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}

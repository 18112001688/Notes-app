import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_sheet.dart';
import 'package:notes_app/views/widgets/notesbody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'coustem_app_bar.dart';
import 'coustem_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 12, left: 12),
        child: Column(
          children: [
            CoustemAppBar(
              icon: Icons.check,
              title: 'Edit Notes',
              onPressed: () {
                // we assign the title that comes from the note to the title in are textfield we edited
                // we assigne it using widget because the model is implmnted outside the class
                // if are title is null then we gave it the previous title
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CoustemTextField(
              onChanged: (data) {
                title = data;
              },
              hintText: widget.note.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoustemTextField(
              maxLines: 5,
              hintText: widget.note.subTitle,
              onChanged: (data) {
                content = data;
              },
            )
          ],
        ),
      ),
    );
  }
}

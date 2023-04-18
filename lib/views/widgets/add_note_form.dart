import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/addnote_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'button.dart';
import 'coustem_field.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  // key which can be used later to access the FormState object and interact with the form fields
  GlobalKey<FormState> formkey = GlobalKey();
  // check the vldation of the form
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CoustemTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CoustemTextField(
              hintText: 'content',
              maxLines: 5,
              onSaved: (value) {
                subtitle = value;
              }),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return AddButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  // make the vldation when tab the add button
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModel = NoteModel(
                        subTitle: subtitle!,
                        title: title!,
                        date: DateTime.now().toString(),
                        // . value because huve does not takes objects and value retruns the  intger of a color
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    //is an enum property that determines how the form fields should be automatically validated. Setting it to , it change the color of the form red to green
                    // as you begain weitting
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

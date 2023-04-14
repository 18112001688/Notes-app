import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';

import 'addnote_cubit/cubit/add_note_cubit.dart';

void main() async {
  // intilaize flutter hive for the project
  await Hive.initFlutter();
  // oprning a box to put are data in
  await Hive.openBox(knotesBox);
  // adding the addabter that has been genrated
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}

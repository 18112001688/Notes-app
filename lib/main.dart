import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant/constant.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  // intilaize flutter hive for the project
  await Hive.initFlutter();
  // oprning a box to put are data in
  await Hive.openBox(knotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
    );
  }
}

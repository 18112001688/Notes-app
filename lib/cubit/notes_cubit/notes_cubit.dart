import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? note;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(knotesBox);
    // returns all values in the note box and convert it to list
    note = notesBox.values.toList();
  }
}

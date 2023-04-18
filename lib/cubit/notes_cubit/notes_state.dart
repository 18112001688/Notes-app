part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteSucess extends NotesState {
  final List<NoteModel> notes;

  NoteSucess({required this.notes});
}

class NoteFaluire extends NotesState {
  final String errorMesseage;

  NoteFaluire({required this.errorMesseage});
}

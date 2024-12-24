part of 'notes_cubit.dart';

class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFaliure extends NotesState {
  final String errorMessage;
  NotesFaliure(this.errorMessage);
}

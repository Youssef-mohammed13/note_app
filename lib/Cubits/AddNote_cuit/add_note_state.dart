part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class AddNotesInetial extends AddNoteState{}
class AddNotesLoading extends AddNoteState{}
class AddNotesSuccess extends AddNoteState{}

class AddNotesfailure extends AddNoteState{
  String errorMessage;
  AddNotesfailure( {required this.errorMessage});

}


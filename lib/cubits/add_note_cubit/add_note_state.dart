
part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState{}
class AddNoteLoadig extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{}

class AddNoteFaliure extends AddNoteState{
  String errorMessage;
  AddNoteFaliure({required this.errorMessage});
}


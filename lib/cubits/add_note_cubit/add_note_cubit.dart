import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

 addNote({required NoteModel note}){

  emit(AddNoteLoadig());
  try{
   var notesBox= Hive.box<NoteModel>(kNoteBox);
   emit(AddNoteSuccess());
   notesBox.add(note);
  }catch(e)
  { AddNoteFaliure(errorMessage: " error ___ ${e.toString()}");
  
  }

 }

} 

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  Notes({required NoteModel note}) {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> mynotes = notesBox.values.toList();
      emit(NotesSuccess(notes: mynotes));
    } catch (e) {
      emit(NotesFaliure(" error ${e.toString()}"));
    }
  }
}

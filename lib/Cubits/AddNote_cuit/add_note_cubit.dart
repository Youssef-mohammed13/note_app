import 'package:bloc/bloc.dart';
part 'add_note_state.dart';



class notesCubit extends Cubit<AddNoteState>{
  notesCubit() : super(AddNotesInetial());
}
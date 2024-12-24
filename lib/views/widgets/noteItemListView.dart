import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/note_item.dart';

class noteItemListView extends StatelessWidget {
  const noteItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> note =
            BlocProvider.of<NotesCubit>(context).myNotes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: note.length,
              itemBuilder: (context, index) {
                return const note_item();
              }),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/NoteBottomSheetBody.dart';
import 'widgets/noteViewBody.dart';

class note_view extends StatelessWidget {
  const note_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              showDragHandle: true,
              context: context,
              builder: (context) {
                return const myModalBottomSheetBody();
              });
        },
        child: const Icon(
          Icons.add,
          color: Color(0xffFFCC80),
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}

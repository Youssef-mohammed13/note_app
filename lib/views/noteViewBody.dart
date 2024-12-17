import 'package:flutter/material.dart';
import 'package:note_app/views/customAppBar.dart';
import 'package:note_app/views/note_item.dart';


class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       CustomAppBar(),
       SizedBox(height: 20,),
       note_item(),

      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:note_app/views/customAppBar.dart';


class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const CustomAppBar(),
      ],
    );
  }
}


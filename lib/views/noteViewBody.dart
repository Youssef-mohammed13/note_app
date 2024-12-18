import 'package:flutter/material.dart';
import 'package:note_app/views/customAppBar.dart';
import 'package:note_app/views/noteItemListView.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 40,),
          CustomAppBar(),
          SizedBox(height: 10,),
          Expanded(child: noteItemListView()),
        ],
      ),
    );
  }
}
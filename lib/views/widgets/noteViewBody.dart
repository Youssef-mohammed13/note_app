import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/customAppBar.dart';
import 'package:note_app/views/widgets/noteItemListView.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 40,),
          CustomAppBar( title: "Note", icon: Icons.search,),
          SizedBox(height: 10,),
          Expanded(child: noteItemListView()),
        ],
      ),
    );
  }
}
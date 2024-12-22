import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/customAppBar.dart';
import 'package:note_app/views/widgets/noteItemListView.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar( title: "Note", icon: Icons.search,),
          SizedBox(height: 10,),
          Expanded(child: noteItemListView()),
        ],
      ),
    );
  }
}
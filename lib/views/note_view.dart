import 'package:flutter/material.dart';
import 'noteViewBody.dart';
class note_view extends StatelessWidget {
  const note_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top : 55),
        child: Column(
          children: [
            NoteViewBody(),
          ],
        ),
      ),
    );
  }
}


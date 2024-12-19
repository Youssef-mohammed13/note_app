import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/customAppBar.dart';
import 'package:note_app/views/widgets/editNoteView_Body.dart';

class Editenote_View extends StatelessWidget {
  const Editenote_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editnoteview_Body()
    );
  }
}
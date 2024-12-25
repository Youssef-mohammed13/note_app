import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/editNoteView_Body.dart';

class Editenote_View extends StatelessWidget {
  const Editenote_View({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Editnoteview_Body(note: note));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';
import 'package:note_app/views/widgets/customAppBar.dart';
import 'package:note_app/views/widgets/editNoteColorsList.dart';

class Editnoteview_Body extends StatefulWidget {
  const Editnoteview_Body({super.key, required this.note});
  final NoteModel note;

  @override
  State<Editnoteview_Body> createState() => _Editnoteview_BodyState();
}

class _Editnoteview_BodyState extends State<Editnoteview_Body> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: "Edit note",
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fechAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.content,
            maxlines: 5,
          ),
          const SizedBox(
            height: 15,
          ),
          editNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}

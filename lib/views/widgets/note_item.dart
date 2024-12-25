import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/EditeNote_View.dart';

class note_item extends StatelessWidget {
  const note_item({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Editenote_View(
            note: note,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 5),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              subtitle: Text(
                note.content,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 14),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fechAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 19,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 10),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

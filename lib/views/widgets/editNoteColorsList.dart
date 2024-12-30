import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/ColorsItem.dart';

class editNoteColorsList extends StatefulWidget {
  const editNoteColorsList({super.key, required this.note});

  final NoteModel note;
  @override
  State<editNoteColorsList> createState() => _editNoteColorsListState();
}

class _editNoteColorsListState extends State<editNoteColorsList> {
  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20 * 2,
      child: SizedBox(
        width: 290,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: kColorat.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  curentIndex = index;
                  widget.note.color = kColorat[index].value;
                  setState(() {});
                },
                child: ColorsItem(
                  isSellected: curentIndex == index,
                  myColor: kColorat[index].value,
                ),
              );
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomTextField.dart';
import 'package:note_app/widgets/customAppBar.dart';

class Editnoteview_Body extends StatelessWidget {
  const Editnoteview_Body ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
          children: [
            const SizedBox(height: 40,),
            const CustomAppBar( title: "Edit note", icon: Icons.check,),
            const SizedBox(height: 30,),
            const CustomTextField(hint: "title"),
            const SizedBox(height: 12,),
            const CustomTextField(hint: "content" , maxlines: 5,),
          ],
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomButton.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';
import 'package:note_app/views/widgets/customAppBar.dart';

class Editnoteview_Body extends StatelessWidget {
  const Editnoteview_Body ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
          children: const[
            SizedBox(height: 40,),
            CustomAppBar( title: "Edit note", icon: Icons.check,),
            SizedBox(height: 30,),
            CustomTextField(hint: "title"),
            SizedBox(height: 12,),
            CustomTextField(hint: "content" , maxlines: 5,),
          ],
        ),
    );
  }
}
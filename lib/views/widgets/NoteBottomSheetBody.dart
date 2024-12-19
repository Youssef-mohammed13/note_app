import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/CustomButton.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';

class myModalBottomSheetBody extends StatelessWidget {
  const myModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 10,),
              CustomTextField(hint: "title",),
              SizedBox(height: 12,),
              CustomTextField(hint: "Content", maxlines: 5,),
              SizedBox(height: 50,),
              CustomButton(),
              SizedBox(height: 60,),
            ],
          ),
    
    );
  }
}

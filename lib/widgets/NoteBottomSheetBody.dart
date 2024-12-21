import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomButton.dart';
import 'package:note_app/widgets/CustomTextField.dart';

class myModalBottomSheetBody extends StatelessWidget {
  const myModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: const [
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

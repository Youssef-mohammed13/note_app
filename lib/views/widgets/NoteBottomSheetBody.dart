import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';

class myModalBottomSheetBody extends StatelessWidget {
  const myModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(hint: "title",),
            SizedBox(height: 12,),
             CustomTextField(hint: "Content", maxlines: 5,),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: kSecondarycolor,
      decoration: InputDecoration(
        hintText: "title",
        hintStyle: TextStyle(color: Colors.grey),
        border: BuildOutLineBorder(),
        enabledBorder: BuildOutLineBorder(),
        focusedBorder: BuildOutLineBorder(),
      ),
    );
  }

  OutlineInputBorder BuildOutLineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color:  kPrimarycolor,
        )
      );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key , required this.hint , this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: kSecondarycolor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        border: BuildOutLineBorder(),
        enabledBorder: BuildOutLineBorder(),
        focusedBorder: BuildOutLineBorder(mycolor: kPrimarycolor),
      ),
    );
  }

  OutlineInputBorder BuildOutLineBorder({mycolor}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: mycolor?? Colors.white,
        )
      );
  }
}

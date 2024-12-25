import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxlines = 1,
      this.onSaved,
      this.validator,
      this.onChanged});

  final String hint;
  final int maxlines;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
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
          color: mycolor ?? Colors.white,
        ));
  }
}

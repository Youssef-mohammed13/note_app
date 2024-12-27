import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem(
      {super.key, required this.isSellected, required this.myColor});

  final bool isSellected;
  final int myColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: isSellected
          ? CircleAvatar(
              backgroundColor: Color(kPrimarycolor.value),
              radius: 20,
              child: CircleAvatar(
                backgroundColor: Color(myColor),
                radius: 18,
              ),
            )
          : CircleAvatar(
              backgroundColor: Color(myColor),
              radius: 18,
            ),
    );
  }
}

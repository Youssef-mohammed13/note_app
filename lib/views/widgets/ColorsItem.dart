import 'package:flutter/material.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 9),
      child: CircleAvatar(
        backgroundColor: Colors.yellow,
        radius: 20,
      ),
    );
  }
}

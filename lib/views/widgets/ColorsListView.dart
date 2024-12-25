import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/ColorsItem.dart';

class ColorsListVie extends StatelessWidget {
  const ColorsListVie({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return const ColorsItem();
          }),
    );
  }
}

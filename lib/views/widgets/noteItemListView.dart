import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_item.dart';

class noteItemListView extends StatelessWidget {
  const noteItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context , index){
        return const note_item();
      }),
    );
  }
}
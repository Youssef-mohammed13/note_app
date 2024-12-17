import 'package:flutter/material.dart';
import 'package:note_app/views/note_item.dart';

class noteItemListView extends StatelessWidget {
  const noteItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , index){
      return const note_item();
    });
  }
}
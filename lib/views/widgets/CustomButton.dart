import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimarycolor,
          borderRadius: BorderRadius.circular(12)
        ),
        child: const Center(
           child:  Text("Add" ,
           style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
        ),
      ),
    );
  }
}
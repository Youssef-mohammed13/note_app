import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text("$title" , style: const TextStyle(color: Colors.white , fontSize: 26),),
        const Spacer(),
        
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(8),
          ),
          child:  Icon( icon , size: 24,),
        )
      ],
    );
  }
}

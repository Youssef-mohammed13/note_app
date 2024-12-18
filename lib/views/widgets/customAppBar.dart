import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text("Note" , style: TextStyle(color: Colors.white , fontSize: 26),),
        const Spacer(),
        
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.search , size: 24,),
        )
      ],
    );
  }
}

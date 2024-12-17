import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class note_item extends StatelessWidget {
  const note_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only( top: 10 , bottom: 10 , left: 10 , right: 5),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text("Flutter tips" , style: TextStyle(color: Colors.black , fontSize: 22),),
      
            subtitle:  Text("Build your carrer with Youssef mohammed" ,
             style: TextStyle(color:  Colors.black.withOpacity(0.5)  , fontSize: 14),),
             
             trailing: IconButton(onPressed: (){}, 
             icon: const Icon (FontAwesomeIcons.trash, color: Colors.black, size: 19,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25 , top: 10),
            child: Text("Dec 17,2024" ,
            style: TextStyle(color:  Colors.black.withOpacity(0.5)  , fontSize: 12),
            
            ),
          ),
        ],
      ),
    );
  }
}

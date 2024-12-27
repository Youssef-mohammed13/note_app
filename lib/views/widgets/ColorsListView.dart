import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/ColorsItem.dart';

class ColorsListVie extends StatefulWidget {
  const ColorsListVie({super.key});

  @override
  State<ColorsListVie> createState() => _ColorsListVieState();
}

class _ColorsListVieState extends State<ColorsListVie> {
  int curentIndex = 0;
  List<Color> Colorat = const [
    Color(0xffAc3931),
    Color(0xffE5d352),
    Color(0xffD9E76c),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20 * 2,
      child: SizedBox(
        width: 290,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Colorat.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  curentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).mycolor =
                      Colorat[index];
                  setState(() {});
                },
                child: ColorsItem(
                  isSellected: curentIndex == index,
                  myColor: Colorat[index].value,
                ),
              );
            }),
      ),
    );
  }
}

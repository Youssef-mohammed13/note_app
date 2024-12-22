import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomButton.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode myautovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: myautovalidateMode,
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "enter you'r title";
              }
            },
            onSaved: (value) {
              title = value;
            },
            hint: "title",
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "enter you'r content";
              }
            },
            onSaved: (value){
              subtitle = value;
            },
            hint: "Content",
            maxlines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: (){
             if(formkey.currentState!.validate()){
              formkey.currentState!.save();
             }else{
              myautovalidateMode = AutovalidateMode.always;
              setState(() {});
             }         
            },
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
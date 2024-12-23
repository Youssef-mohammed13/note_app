import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/addNoteForm.dart';

class myModalBottomSheetBody extends StatelessWidget {
  const myModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFaliure) {
              print("failed ${state.errorMessage}");
            }
            if (state is AddNoteSuccess) {
              // Navigator.pop(context);
              const SnackBar(content: Text("Success"));
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNoteLoadig ? true : false,
                child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}

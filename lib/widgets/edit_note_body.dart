import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';

import 'custom_text_field.dart';
import 'edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            NotesAppBar(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle =
                    subTitle ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icon: Icons.check,
              title: 'Edit Note',
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.noteModel.title,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (value) {
                subTitle = value;
              },
              hintText: widget.noteModel.subTitle,
              maxLines: 5,
            ),
            const SizedBox(
              height: 16,
            ),
            EditNoteColorsListView(
              noteModel: widget.noteModel,
            ),
          ],
        ),
      ),
    );
  }
}

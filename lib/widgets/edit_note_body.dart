import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            NotesAppBar(
              icon: Icons.check,
              title: 'Edit Note',
            ),
          ],
        ),
      ),
    );
  }
}

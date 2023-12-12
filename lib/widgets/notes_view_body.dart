import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
              height: 10,
            ),
            NotesAppBar(),
            SizedBox(height: 10,),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}

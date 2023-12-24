import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

 

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NoteCubit>(context).fetchAllNotes();
        // var notesBox = Hive.box<NoteModel>(kNotesBox);
        // List<NoteModel> notes = notesBox.values.toList();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              // final color = colors[index % colors.length];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: NoteItem(
                  noteModel: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

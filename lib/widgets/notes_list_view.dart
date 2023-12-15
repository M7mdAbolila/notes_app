import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final colors = const [
    Color(0xffFFCD7B),
    Color(0xffE8E897),
    Color(0xff76D6EF),
    Color(0xffC289C7),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final color = colors[index % colors.length];
          log(color.toString());
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: NoteItem(
              color: color,
            ),
          );
        },
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      emit(
        NoteSuccess(
          notes: notesBox.values.toList(),
        ),
      );
    } on Exception catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}

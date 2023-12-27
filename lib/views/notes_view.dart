import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // يعني متغيرش من حجم الشاشة علشان تناسب الكيبورد
      // resizeToAvoidBottomInset: false,
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const CustomAddNoteBottomSheet(),
          );
        },
        backgroundColor: Colors.tealAccent,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

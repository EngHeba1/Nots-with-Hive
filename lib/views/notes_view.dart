import 'package:flutter/material.dart';
import 'package:note_app/views/widgete/add_note.dart';
import 'package:note_app/views/widgete/custom_appbar.dart';
import 'package:note_app/views/widgete/list_view.dart';
import 'package:note_app/views/widgete/news_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static const String routName = "NotesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {showModelSheet(context);}, child: Icon(Icons.add)),
      body: Column(
        children: [CustomAppbar(), Expanded(child: ListViewWidget())],
      ),
    );
  }

  void showModelSheet(context) {
    showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)), isScrollControlled: true,
      context: context, builder: (context) => AddNote(),);
  }
}

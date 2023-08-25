import 'package:flutter/material.dart';
import 'package:note_app/views/widgete/custom_appbar.dart';
import 'package:note_app/views/widgete/news_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
static const String routName="NotesView" ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
       children: [
         CustomAppbar(),
         NewsItem()

       ],
      ),
    );
  }
}

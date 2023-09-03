import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/views/notes_view.dart';

Future<void> main() async {
  await Hive.initFlutter();

  runApp(const NoteApp());
  Hive.openBox("noteBox");
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        theme: ThemeData.light(),
        themeMode:  ThemeMode.dark,
        initialRoute:NotesView.routName ,
        routes: {
        NotesView.routName : (context) =>  NotesView(),
          EditView.routName : (context) => EditView(),
        });


      },

    ) ;
  }
}

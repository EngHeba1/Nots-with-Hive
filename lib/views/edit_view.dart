import 'package:flutter/material.dart';
import 'package:note_app/views/widgete/custom_appbar.dart';
import 'package:note_app/views/widgete/text_field.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static const String routName = "EditView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(
              "Edit Note",
              Icon(
                Icons.done,
                size: 30,
              )),
          SizedBox(),
          TextFieldWidget(titel:" Title",maxLine: 1),
          SizedBox(),
          TextFieldWidget(titel: "Describtion",maxLine: 5),
        ],
      ),
    );
  }
}

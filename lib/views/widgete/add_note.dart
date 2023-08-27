import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgete/text_field.dart';

import 'button_custom.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 16.h,),
          TextFieldWidget(titel: "Titel",maxLine: 1),
          SizedBox(height: 16.h,),
          TextFieldWidget(titel: "Describtion",maxLine: 5),
          SizedBox(height: 16.h,),
          CustomButtoun()

        ],),
      ),
    );
  }
}

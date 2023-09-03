import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgete/text_field.dart';

import 'button_custom.dart';

class AddNote extends StatefulWidget {
  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
//  const AddNote({super.key});
  var formKey = GlobalKey<FormState>();

  var titelController = TextEditingController();

  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(children: [
            SizedBox(height: 16.h,),
            TextFieldWidget(titel: "Titel",
                maxLine: 1,
                controller: titelController,
                validator
                :(value){
                if(value==null){
                  return "Please Enter Text";
                }
                }),
            SizedBox(height: 16.h,),
            TextFieldWidget(
                titel: "Describtion", maxLine: 5, controller: descController,
                validator:(value){
              if(value==null){
                return "Please Enter Text";
              }
            } ),
            SizedBox(height: 16.h,),
            CustomButtoun(
              () {
                if(formKey.currentState!.validate()){
                  formKey.currentState?.save();
                }
                autovalidateMode: AutovalidateMode.always;
              },
            )

          ],),
        ),
      ),
    );
  }
}

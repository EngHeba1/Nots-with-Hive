import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  String titel;
  int maxLine;

  TextFieldWidget({required this.titel, required this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppCloros.primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.white)),
            label: Text(
              titel,
              maxLines: maxLine ,
              style: TextStyle(color: AppCloros.primaryColor),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  String titel;
  int maxLine;
  String? Function(String?)?  validator;
  TextEditingController? controller=TextEditingController();

  TextFieldWidget({super.key, required this.titel, required this.maxLine, this.controller,this.validator });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller:controller ,
        validator:validator,
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

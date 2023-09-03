import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/app_colors.dart';

class CustomButtoun extends StatelessWidget {
  //const CustomButtoun({super.key});
  void Function()? onTap;
  CustomButtoun(this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 55.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppCloros.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: (){},
          child: Center(
              child: Text("Add", style: TextStyle(color: CupertinoColors.black,fontSize: 24))),
        ),
      ),
    );
  }


}

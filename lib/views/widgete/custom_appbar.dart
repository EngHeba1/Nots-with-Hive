import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text("Notes",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 30.sp)),
              Spacer(),
              Container(
                width: 45.w,
                height: 45.h,
                decoration: BoxDecoration(color: Colors.white.withOpacity(.05),borderRadius: BorderRadius.circular(16) ),
                child:  Icon(Icons.search,size: 30,)),

            ],
          ),
        ),
      ),
    );
  }
}

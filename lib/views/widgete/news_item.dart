import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/app_colors.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12,right: 12),
      decoration: BoxDecoration(color: AppCloros.Color1, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        Container(
          decoration: BoxDecoration(
              ),
          child: ListTile(
            title: Text("Flutter Tips",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black,fontSize: 20.sp)),
            subtitle: Text("build your nots with heba bahrawe",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.black54)),
            trailing: Icon(Icons.delete,
                size: 24,
                color: Colors.black),
          ),
        ),
        SizedBox(height: 20.h,),
        Padding(
          padding:EdgeInsets.only(bottom: 24,right: 24),
          child: Text("Augaste 26 ,2023", style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.black54)),
        )

      ]),
    );
  }
}

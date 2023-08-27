import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/app_colors.dart';
import 'news_item.dart';

class ListViewWidget extends StatelessWidget {
 // const ListViewWidget({super.key});
  List<Color>colors=[AppCloros.Color1,AppCloros.greenColor,AppCloros.lightGreenColor,Colors.indigo];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => NewsItem(colors[index]),itemCount: colors.length   ,
      );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/Styles/my_icons.dart';

class ToolbarWithTitle extends StatelessWidget {
  final String title;
  ToolbarWithTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 26.3.h,horizontal: 14.w),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:SvgPicture.asset(icon_back_arrow),),

          SizedBox(width: 16.3.w,),
          Text(title,style: TextStyle(
            fontSize: 14.sp,
            color: title_black_15181e,
            fontFamily: fontInterSemibold
          ),)

        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class AboutYourProblem extends StatefulWidget {
  const AboutYourProblem({Key? key}) : super(key: key);

  @override
  State<AboutYourProblem> createState() => _AboutYourProblemState();
}

class _AboutYourProblemState extends State<AboutYourProblem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bg_gray_f0f0f4,


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

      Container(
      padding: EdgeInsets.symmetric(vertical: 26.3.h,horizontal: 16.3.w),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:SvgPicture.asset(icon_back_arrow),),

              SizedBox(width: 16.3.w,),
              Expanded(
                child: Text(str_tell_us_about_your_problem,style: TextStyle(
                    fontSize: 14.sp,
                    color: title_black_15181e,
                    fontFamily: interSemibold
                ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 16.w),
                decoration: BoxDecoration(
                  color: bg_gray_f1eadc,
                  borderRadius: BorderRadius.circular(18.r)
                ),
                child: Text(str_no_of_page,style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontFamily: interSemibold
                ),),
              ),

            ],
          ),
        )

        ],
      ),
    ));
  }
}

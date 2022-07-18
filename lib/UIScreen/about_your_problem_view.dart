import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

import '../CommonLayout/box_shadow.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class AboutYourProblemView extends StatefulWidget {
  const AboutYourProblemView({Key? key}) : super(key: key);

  @override
  State<AboutYourProblemView> createState() => _AboutYourProblemViewState();
}

class _AboutYourProblemViewState extends State<AboutYourProblemView> {
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
            padding: EdgeInsets.symmetric(vertical: 26.3.h, horizontal: 16.3.w),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(icon_back_arrow),
                ),
                SizedBox(
                  width: 16.3.w,
                ),
                Expanded(
                  child: Text(
                    str_tell_us_about_your_problem,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: title_black_15181e,
                        fontFamily: interSemibold),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
                  decoration: BoxDecoration(
                      color: bg_gray_f1eadc,
                      borderRadius: BorderRadius.circular(18.r)),
                  child: Text(
                    str_no_of_page,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontFamily: interSemibold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 14.w,top: 20.h),
            child: Text(str_have_you_had_any_injuries_in_the_past,style: TextStyle(
              fontSize: 14.sp,fontFamily: interSemibold,color: light_black_3e4046
            ),),
          ),


          Container(
            margin: EdgeInsets.only(left: 14.w,right: 14.w,top: 16.h),
            decoration: boxDecoration,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(str_yes,style: TextStyle(
                      fontFamily: interBold,fontSize: 14.sp,color:grays_424448
                    ),),
                  ],
                ),
              )
            ],
          ),
          )
        ],
      ),
    ));
  }
}

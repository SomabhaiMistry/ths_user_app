import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Widgets/box_shadow.dart';

import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: bg_gray_f0f0f4,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 400.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [grdient1_999cffee, grdient2_00f0f0f4],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(icon_consultation),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          "Consultations",
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontFamily: fontInterBold,
                              color: title_black_15181e),
                        )
                      ],
                    ),
                    SizedBox(height: 28.h,),
                    Text(
                      "Upcoming Consultations",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: fontInterBold,
                          color: title_black_15181e),
                    ),



                    Container(
                      decoration: boxDecoration,
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SvgPicture.asset(icon_ca)
                            ],
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 28.h,),

                    Text(
                      "Past Consultations",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: fontInterBold,
                          color: title_black_15181e),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

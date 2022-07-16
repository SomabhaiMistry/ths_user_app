import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/Styles/my_icons.dart';

import '../Styles/my_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bg_btn_199a8e,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(icon_logo,width: 88.w,height: 48.w,),
              SizedBox(
                height: 30.h,
              ),
              Text(
                str_total_health_solutions,
                style: TextStyle(
                    fontSize: 20.sp,
                    color: light_gray_f4f7f5,
                    fontFamily: poppinsBold),
              ),
              SizedBox(
                height: 5.2.h,
              ),
              Text(
                str_where_health_meets_comfort,
                style: TextStyle(
                    fontSize: 14.sp,
                    color: light_gray_f4f7f5,
                    fontFamily: robotoRegular),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

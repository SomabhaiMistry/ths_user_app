import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/Styles/my_height.dart';
import 'package:ths_user_app/UIScreen/personal_information.dart';
import 'package:ths_user_app/UIScreen/spalsh_screen_ui.dart';

import 'all_health_problem.dart';
import 'login_via_mobile.dart';
import 'otp_verification.dart';
import 'select_your_city.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: white_ffffff,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: HeightData.fifteen,),

                Center(
                  child: Text("List of Screen",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: sfProDisplayMedium
                  ),),
                ),

                // SizedBox(height: HeightData.fifteen,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "SplashScreen Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: sfProDisplayMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginViaMobile(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "LoginViaMobile Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: sfProDisplayMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpVerification(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "OtpVerification Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: sfProDisplayMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalInformation(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "PersonalInformation Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: sfProDisplayMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectYourCity(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "SelectYourCity Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: sfProDisplayMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllHealthProblems(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "AllHealthProblems Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: sfProDisplayMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
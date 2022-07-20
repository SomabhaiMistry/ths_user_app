import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/UIScreens/personal_information_view.dart';
import 'package:ths_user_app/UIScreens/select_subscription_plan_view.dart';
import 'package:ths_user_app/UIScreens/select_time_sloat_view.dart';
import 'package:ths_user_app/UIScreens/spalsh_screen_view.dart';
import 'package:ths_user_app/UIScreens/test.dart';

import 'MultiStoreOrderDetail.dart';
import 'about_your_problem_view.dart';
import 'all_health_problem_view.dart';
import 'consultation_for_joint_pain_view.dart';
import 'demo.dart';
import 'login_via_mobile_view.dart';
import 'otp_verification_view.dart';
import 'select_your_city_view.dart';

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
                SizedBox(height: 15.h),

                Center(
                  child: Text("List of Screen",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: fontInterMedium
                  ),),
                ),

                // SizedBox(height: HeightData.fifteen,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreenView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "SplashScreen Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginViaMobileView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "LoginViaMobile Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpVerificationView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "OtpVerification Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalInformationView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "PersonalInformation Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectYourCityView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "SelectYourCity Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllHealthProblemsView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "AllHealthProblems Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => AboutYourProblemView(),
                //         ));
                //   },
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                //     child: Text(
                //       "AboutYourProblem Screen",
                //       style: TextStyle(
                //           color: Colors.black87,
                //           fontFamily: sfProDisplayMedium,
                //           fontSize: 16.sp),
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConsultationForJointPainView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "ConsultationForJointPain Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectTimeSlotView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "SelectTimeSlot Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectSubscriptionPlanView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "SelectSubscriptionPlan Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutYourProblemView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "AboutYourProblemView Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginViaMobileView(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "Test Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MultiStoreOrderDetail(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    child: Text(
                      "Demo Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: fontInterMedium,
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
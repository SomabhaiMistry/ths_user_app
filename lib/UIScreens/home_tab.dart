import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_strings.dart';
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
    double? _ratingValue;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: bg_gray_f0f0f4,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 389.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      grdient1_999cffee,
                      grdient2_00f0f0f4,
                      bg_gray_f0f0f4
                    ],
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
                        Text(str_consultations,
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontFamily: fontInterBold,
                              color: title_black_15181e),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      str_upcoming_consultations,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: fontInterBold,
                          color: title_black_15181e),
                    ),
                    Container(
                      decoration: boxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.w, vertical: 14.w),
                            decoration: BoxDecoration(
                              color: bg_btn_199a8e,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SvgPicture.asset(icon_event_calender),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  str_date_time_schedule,
                                  style: TextStyle(
                                      fontFamily: fontInterMedium,
                                      fontSize: 14.sp,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 14.h, left: 14.w, right: 14.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: 85.w,
                                  height: 96.h,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: Image.asset(
                                      img_food2,
                                      width: 85.w,
                                      height: 96.h,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 14.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      str_appointment_with,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: silver_67696c,
                                          fontFamily: fontInterMedium),
                                    ),
                                    Text(
                                      str_dr_name,
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          color: Colors.black,
                                          fontFamily: fontInterSemibold),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      str_for_rushabh_patel,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: grays_424448,
                                          fontFamily: fontInterMedium),
                                    ),
                                    SizedBox(
                                      height: 0.h,
                                    ),
                                    Text(
                                      str_problem,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: hint_txt_909196,
                                          fontFamily: fontInterMedium),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 13.h),
                            height: 1.h,
                            color: line_gray_e2e2e6,
                          ),
                          Container(
                            margin:EdgeInsets.symmetric(horizontal: 14.w,vertical: 14.5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SvgPicture.asset(icon_cancel_close),
                                    SizedBox(width: 6.w,),
                                    Text(str_cancle_appointment,style: TextStyle(
                                        fontSize: 14.sp,fontFamily: fontInterMedium,
                                        color: red_db202b
                                    ),),
                                  ],
                                ),
                                Container(
                                  height: 26.h,
                                  width: 1,
                                  color: line_gray_e2e2e6,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SvgPicture.asset(icon_rotate),
                                    SizedBox(width: 6.w,),
                                    Text(str_reschedule,style: TextStyle(
                                        fontSize: 14.sp,fontFamily: fontInterMedium,
                                        color: bg_btn_199a8e
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      "Past Consultations",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: fontInterBold,
                          color: title_black_15181e),
                    ),

                    Container(
                      decoration: boxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 14.h, left: 14.w, right: 14.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: 85.w,
                                  height: 96.h,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: Image.asset(
                                      img_food2,
                                      width: 85.w,
                                      height: 96.h,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 14.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      str_appointment_with,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: silver_67696c,
                                          fontFamily: fontInterMedium),
                                    ),
                                    Text(
                                      str_dr_name,
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          color: Colors.black,
                                          fontFamily: fontInterSemibold),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      str_for_rushabh_patel,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: grays_424448,
                                          fontFamily: fontInterMedium),
                                    ),
                                    SizedBox(
                                      height: 0.h,
                                    ),
                                    Text(
                                      str_problem,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: hint_txt_909196,
                                          fontFamily: fontInterMedium),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 13.h),
                            height: 1.h,
                            color: line_gray_e2e2e6,
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 14.h,left: 14.w,right: 14.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SvgPicture.asset(icon_event_calender,color: hint_txt_909196,),
                                SizedBox(width: 12.w,),
                                Text(str_complete_date_time,style: TextStyle(
                                  fontFamily: fontInterMedium,fontSize: 12.sp,color: title_black_15181e
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 13.h),
                            height: 1.h,
                            color: line_gray_e2e2e6,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14.w,top: 16.h,bottom: 17.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(str_rate_our_service,style: TextStyle(
                                  fontSize: 14.sp,fontFamily: fontInterMedium,color: title_black_15181e
                                ),),
                                SizedBox(width: 5.w,),
                                Center(
                                  child: RatingBar(
                                      itemSize: 35,
                                      initialRating: 0,
                                      glowColor: Colors.transparent,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                      ratingWidget: RatingWidget(
                                          full: Image.asset(img_star_rating_fill,width: 60.w,height: 60.h),
                                          // full: const Icon(Icons.star, color:yellow_FFC800),
                                          half:Image.asset(img_star_rating_fill,width: 60.w,height: 60.h),
                                          // half: const Icon(Icons.star_half, color:yellow_FFC800,),
                                          empty: Image.asset(img_star_rating_empty,width: 60.w,height: 60.h),),
                                      // empty: const Icon(Icons.star_outline, color:gray_868590,)),
                                      onRatingUpdate: (value) {
                                        setState(() {
                                          _ratingValue = value;
                                        });
                                      }),
                                ),



                              ],
                            ),
                          )
                        ],
                      ),
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

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/CommonLayout/button.dart';
import 'package:ths_user_app/Styles/my_font.dart';

import '../CommonLayout/toolbar_with_title.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bg_gray_f0f0f4,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ToolbarWithTitle(str_your_information ),
                    Container(
                      margin: EdgeInsets.only(top: 20.h,left: 14.w),
                      child: Text(str_personal_info,style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: interSemibold,
                          color: light_black_3e4046
                      ),),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      margin: EdgeInsets.only(left: 14.w,right: 14.w,top: 16.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color:
                            Color(0x0f041d42),
                            offset: const Offset(3.0, 5.0,),
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ],
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 14.w),
                            child: TextField(
                              // controller: titleController,
                              style: const TextStyle(
                                  color: grays_424448,
                                  fontFamily: interSemibold,
                                  fontSize: 14.0),
                              decoration: new InputDecoration(
                                isDense: true,
                                hintText: str_enter_your_name,
                                hintStyle: TextStyle(
                                    color: hint_txt_909196,
                                    fontFamily: interSemibold,
                                    fontSize: 14.0),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          DottedLine(
                            direction: Axis.horizontal,
                            // lineLength: 50,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor:line_gray_e2e2e6,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14.w,right: 14.w,top:10.h),
                            child: TextField(
                              // controller: titleController,
                              style: const TextStyle(
                                  color: grays_424448,
                                  fontFamily: interSemibold,
                                  fontSize: 14.0),
                              decoration: new InputDecoration(
                                isDense: true,
                                hintText: str_enter_your_surname,
                                hintStyle: TextStyle(
                                    color: hint_txt_909196,
                                    fontFamily: interSemibold,
                                    fontSize: 14.0),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          DottedLine(
                            direction: Axis.horizontal,
                            // lineLength: 50,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor:line_gray_e2e2e6,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14.w,right: 14.w,top:10.h),
                            child: TextField(
                              // controller: titleController,
                              style: const TextStyle(
                                  color: grays_424448,
                                  fontFamily: interSemibold,
                                  fontSize: 14.0),
                              decoration: new InputDecoration(
                                isDense: true,
                                hintText: str_enter_your_email,
                                hintStyle: TextStyle(
                                    color: hint_txt_909196,
                                    fontFamily: interSemibold,
                                    fontSize: 14.0),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20.h,left: 14.w),
                      child: Text(str_dob,style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: interSemibold,
                          color: light_black_3e4046
                      ),),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      margin: EdgeInsets.only(left: 14.w,right: 14.w,top: 16.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color:
                            Color(0x0f041d42),
                            offset: const Offset(3.0, 5.0,),
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ],
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 14.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(str_date_dob,style: TextStyle(
                                    fontFamily: interSemibold,fontSize: 14.sp,color: grays_424448
                                ),),
                                Image.asset(icon_dob,width: 16.5.w,height: 16.5.h,)
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          DottedLine(
                            direction: Axis.horizontal,
                            // lineLength: 50,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor:line_gray_e2e2e6,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14.w,right: 14.w,top:10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Age :",style: TextStyle(
                                    fontSize: 14.sp,color: hint_txt_909196,fontFamily: interSemibold
                                ),),
                                SizedBox(width: 5.w,),
                                Text("29",style: TextStyle(
                                    fontSize: 14.sp,color: grays_424448,fontFamily: interSemibold
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20.h,left: 14.w),
                      child: Text(str_gender,style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: interSemibold,
                          color: light_black_3e4046
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14.w,right: 14.w,top: 16.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 10.w),
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14.r)
                              ),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(img_other,height: 36.h,width: 36.w,),
                                  SizedBox(height: 14.h,),
                                  Text("Male",style: TextStyle(
                                      fontFamily: interSemibold,color: hint_txt_909196,fontSize: 14.sp
                                  ),)

                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14.r)
                              ),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(img_female,height: 36.h,width: 36.w,),
                                  SizedBox(height: 14.h,),
                                  Text("Female",style: TextStyle(
                                      fontFamily: interSemibold,color: hint_txt_909196,fontSize: 14.sp
                                  ),)

                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10.w),
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14.r)
                              ),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(img_other,height: 36.h,width: 36.w,),
                                  SizedBox(height: 14.h,),
                                  Text("Other",style: TextStyle(
                                      fontFamily: interSemibold,color: hint_txt_909196,fontSize: 14.sp
                                  ),)

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),



              Button(str_next)

            ],
          ),
        ));
  }
}

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/Widgets/button.dart';
import 'package:ths_user_app/Styles/my_font.dart';

import '../Widgets/box_shadow.dart';
import '../Widgets/green_box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class PersonalInformationView extends StatefulWidget {
  const PersonalInformationView({Key? key}) : super(key: key);

  @override
  State<PersonalInformationView> createState() => _PersonalInformationViewState();
}

class _PersonalInformationViewState extends State<PersonalInformationView> {

  bool isMale = false;
  bool isFemale = false;
  bool isOther = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bg_gray_f0f0f4,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ToolbarWithTitle(str_your_information ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 20.h,left: 14.w),
                        child: Text(str_personal_info,style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: fontInterSemibold,
                            color: light_black_3e4046
                        ),),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        margin: EdgeInsets.only(left: 14.w,right: 14.w,top: 16.h),
                        decoration: boxDecoration,
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
                                    fontFamily: fontInterSemibold,
                                    fontSize: 14.0),
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: str_enter_your_name,
                                  hintStyle: TextStyle(
                                      color: hint_txt_909196,
                                      fontFamily: fontInterSemibold,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            const DottedLine(
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
                                style: TextStyle(
                                    color: grays_424448,
                                    fontFamily: fontInterSemibold,
                                    fontSize: 14.sp),
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: str_enter_your_surname,
                                  hintStyle: TextStyle(
                                      color: hint_txt_909196,
                                      fontFamily: fontInterSemibold,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            const DottedLine(
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
                                style: TextStyle(
                                    color: grays_424448,
                                    fontFamily: fontInterSemibold,
                                    fontSize: 14.sp),
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: str_enter_your_email,
                                  hintStyle: TextStyle(
                                      color: hint_txt_909196,
                                      fontFamily: fontInterSemibold,
                                      fontSize: 14.sp),
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
                            fontFamily: fontInterSemibold,
                            color: light_black_3e4046
                        ),),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        margin: EdgeInsets.only(left: 14.w,right: 14.w,top: 16.h),
                        decoration:boxDecoration,
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
                                      fontFamily: fontInterSemibold,fontSize: 14.sp,color: grays_424448
                                  ),),
                                  Image.asset(icon_dob,width: 16.5.w,height: 16.5.h,)
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            const DottedLine(
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
                                  Text(str_age,style: TextStyle(
                                      fontSize: 14.sp,color: hint_txt_909196,fontFamily: fontInterSemibold
                                  ),),
                                  SizedBox(width: 5.w,),
                                  Text(str_twenty_nine,style: TextStyle(
                                      fontSize: 14.sp,color: grays_424448,fontFamily: fontInterSemibold
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
                            fontFamily: fontInterSemibold,
                            color: light_black_3e4046
                        ),),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 14.w,vertical: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Expanded(
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isMale = true;
                                    isFemale = false;
                                    isOther = false;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  padding: EdgeInsets.symmetric(vertical: 16.h),
                                  decoration:isMale?boxDecorationGreen:boxDecoration,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(img_other,height: 36.h,width: 36.w,color: isMale?Colors.white:hint_txt_909196,),
                                      SizedBox(height: 14.h,),
                                      Text(str_male,style: TextStyle(
                                          fontFamily: fontInterSemibold,color: isMale?Colors.white:hint_txt_909196,fontSize: 14.sp
                                      ),)

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isMale = false;
                                    isFemale = true;
                                    isOther = false;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16.h),
                                  decoration:isFemale?boxDecorationGreen:boxDecoration,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(img_female,height: 36.h,width: 36.w,color: isFemale?Colors.white:hint_txt_909196,),
                                      SizedBox(height: 14.h,),
                                      Text(str_female,style: TextStyle(
                                          fontFamily: fontInterSemibold,color: isFemale?Colors.white:hint_txt_909196,fontSize: 14.sp
                                      ),)

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isMale = false;
                                    isFemale = false;
                                    isOther = true;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 10.w),
                                  padding: EdgeInsets.symmetric(vertical: 16.h),
                                  decoration:isOther?boxDecorationGreen:boxDecoration,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(img_other,height: 36.h,width: 36.w,color: isOther?Colors.white:hint_txt_909196,),
                                      SizedBox(height: 14.h,),
                                      Text(str_other,style: TextStyle(
                                          fontFamily: fontInterSemibold,color: isOther?Colors.white:hint_txt_909196,fontSize: 14.sp
                                      ),)

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  decoration: BoxDecoration(
                    color:bg_gray_f0f0f4
                  ),
                  child: Button(str_next))
            ],
          ),
        ));
  }
}
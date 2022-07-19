import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/Styles/my_icons.dart';

import '../CommonLayout/box_shadow.dart';
import '../CommonLayout/button.dart';
import '../Styles/my_strings.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  bool isYes = false;
  bool isNo = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14.w,vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                      str_have_you_been_medications,
                      style:  TextStyle(
                          color: light_black_3e4046,
                          fontFamily: interSemibold,
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.sp
                      ),
                      textAlign: TextAlign.left
                  ),

                  SizedBox(height: 16.h,),

                  Container(
                    decoration: boxDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isYes =true;
                              isNo =false;
                            });
                          },
                          child: Container(
                            padding:  EdgeInsets.symmetric(horizontal: 14.w,vertical: 16.h),
                            decoration: BoxDecoration(
                              color: isYes?light_green_11199a8e:Colors.white,
                                borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14.r),
                                topLeft: Radius.circular(14.r))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Yes
                                Text(
                                    str_yes,
                                    style:  TextStyle(
                                        color:isYes?  bg_btn_199a8e:grays_424448,
                                        fontFamily: interMedium,
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 14.sp
                                    ),
                                    textAlign: TextAlign.left
                                ),

                                SvgPicture.asset(isYes?icon_circle_green:icon_circle_grey)
                              ],
                            ),
                          ),
                        ),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 1.5,
                          dashLength: 3.0,
                          dashColor:isYes? bg_btn_199a8e:line_gray_e2e2e6,
                          dashGapLength: 4.0,
                        ),

                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isYes =false;
                              isNo =true;
                            });
                          },
                          child: Container(
                            padding:  EdgeInsets.symmetric(horizontal: 14.w,vertical: 16.h),
                            decoration: BoxDecoration(
                                color: isNo?light_green_11199a8e:Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(14.r),
                                    bottomRight: Radius.circular(14.r))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Yes
                                Text(
                                    str_No,
                                    style:  TextStyle(
                                        color:  isNo?  bg_btn_199a8e:grays_424448,
                                        fontFamily: interMedium,
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 14.sp
                                    ),
                                    textAlign: TextAlign.left
                                ),
                                SvgPicture.asset(isNo?icon_circle_green:icon_circle_grey)
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Button(str_verify),
          SizedBox(height: 29.h,)
        ],
      ),
    ));
  }
}

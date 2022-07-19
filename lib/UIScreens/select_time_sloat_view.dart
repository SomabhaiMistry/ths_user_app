import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ths_user_app/Model/select_city_model.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/Widgets/button.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class SelectTimeSlotView extends StatefulWidget {
  const SelectTimeSlotView({Key? key}) : super(key: key);

  @override
  State<SelectTimeSlotView> createState() => _SelectTimeSlotViewState();
}

class _SelectTimeSlotViewState extends State<SelectTimeSlotView> {
  int myposition = -1;
  List<SelectCityModel> selectDateList = [
    SelectCityModel("Today"),
    SelectCityModel("Tomorrow"),
    SelectCityModel("6/6/2022"),
    SelectCityModel("7/6/2022"),
    SelectCityModel("8/6/2022"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bg_gray_f0f0f4,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ToolbarWithTitle(str_select_time_slot),
          
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.h, left: 14.w, right: 14.w),
                  padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.h),
                  decoration: boxDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipOval(
                          child: Container(
                              color: Colors.yellow,
                              child: Image.asset(
                                icon_logo,
                                width: 57.w,
                                height: 57.h,
                              ))),
                      SizedBox(
                        width: 14.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            str_dr_name,
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontFamily: fontInterSemibold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 2.5.h,
                          ),
                          Text(
                            str_Orthopedist,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: fontInterRegular,
                                color: silver_67696c),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 14.w, top: 21.h),
                    child: Text(
                      str_select_date,
                      style: TextStyle(
                          fontFamily: fontInterSemibold,
                          fontSize: 14.sp,
                          color: light_black_3e4046),
                    )),
                Container(
                  height: 100.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 14.w),
                    itemCount: selectDateList.length,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () {
                        setState(() {
                          myposition = i;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.w,top: 16.h),
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(width: 1, color: myposition == i ? orange_df6129 : Colors.white),
                            color: myposition == i ? light_orange_FCEFE6 : Colors.white),
                        child: Text(
                          selectDateList[i].tvSelectCity,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: fontInterMedium,
                              color: myposition == i ? title_black_15181e : grays_424448),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 14.w, top: 21.h),
                    child: Text(
                      str_select_time,
                      style: TextStyle(
                          fontFamily: fontInterSemibold,
                          fontSize: 14.sp,
                          color: light_black_3e4046),
                    )),

                Container(
                  width: double.infinity,
                  height: 150,
                  margin: EdgeInsets.only(top: 16.h,left: 14.w,right: 16.w),
                  decoration: boxDecoration,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                    ],
                  ),
                )
              ],
            ),
          ),
          
          
          Button(str_next),
          SizedBox(height:29.h)
        ],
      ),
    ));
  }
}

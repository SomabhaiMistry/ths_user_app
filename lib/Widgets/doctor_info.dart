import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14.h,horizontal: 14.w),


      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 85.w,
            height: 96.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(img_food1,width: 85.w, height: 96.h,fit: BoxFit.fill,),
            ),
          ),

          SizedBox(width: 14.w,),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(str_dr_name,style: TextStyle(
                  fontSize: 17.sp,color: Colors.black,fontFamily: fontInterSemibold
              ),),
              SizedBox(height: 4.h,),
              Text(str_Orthopedist,style: TextStyle(
                  fontSize: 12.sp,color: silver_67696c,fontFamily: fontInterMedium
              ),),
              SizedBox(height: 12.h,),
              Text(str_exp_12_years,style: TextStyle(
                  fontSize: 12.sp,color: grays_424448,fontFamily: fontInterMedium
              ),),
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(str_455_consultations,style: TextStyle(
                      fontSize: 12.sp,color: silver_67696c,fontFamily: fontInterMedium
                  ),),
                  SizedBox(width: 4.w,),
                  Image.asset(img_like,width: 20.w,height: 18.h,)
                ],
              ),
            ],
          )
        ],
      ),
    );

  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/Model/ConsultationModel.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';

import '../CommonLayout/box_shadow.dart';
import '../CommonLayout/toolbar_with_title.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
class ConsultationForJointPainView extends StatefulWidget {
  const ConsultationForJointPainView({Key? key}) : super(key: key);

  @override
  State<ConsultationForJointPainView> createState() => _ConsultationForJointPainViewState();
}

class _ConsultationForJointPainViewState extends State<ConsultationForJointPainView> {
  List<ConsultationModel> consultationList = [
    ConsultationModel(img_food1,"Dr. Niraj Patel","Orthopedist","9 Years","455","4:30 pm"),
    ConsultationModel(img_food2,"Dr. Niraj Patel","Orthopedist","9 Years","455","4:30 pm"),
    ConsultationModel(img_food3,"Dr. Niraj Patel","Orthopedist","9 Years","455","4:30 pm"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: bg_gray_f0f0f4,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ToolbarWithTitle(str_consultation_for_joint_pain),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            color: orange_f3a581,
            child: Text(str_here_are_some_of_the_best_doctors_for_you,style: TextStyle(
              fontFamily: interMedium,fontSize: 14.sp,color: Colors.white
            ),textAlign: TextAlign.center,),
          ),

          ListView.builder(
            scrollDirection: Axis.vertical,
            primary: false,
            shrinkWrap: true,
            itemCount: consultationList.length,
            itemBuilder: (context, i) =>
                Container(
                  margin: EdgeInsets.only(left: 14.w,right: 14.w,top: 15.h),
                  decoration: boxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
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
                                child: Image.asset(consultationList[i].imgDoctor,width: 85.w, height: 96.h,fit: BoxFit.fill,),
                              ),
                            ),

                            SizedBox(width: 14.w,),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(consultationList[i].tvDoctorName,style: TextStyle(
                                    fontSize: 17.sp,color: Colors.black,fontFamily: circularXXTTTrialMedium
                                ),),
                                SizedBox(height: 4.h,),
                                Text(consultationList[i].tvSpecialist,style: TextStyle(
                                    fontSize: 12.sp,color: silver_67696c,fontFamily: circularXXTTTrialRegular
                                ),),
                                SizedBox(height: 12.h,),
                                Text(str_exp+consultationList[i].tvExperience,style: TextStyle(
                                    fontSize: 12.sp,color: grays_424448
                                ),),
                                SizedBox(height: 3.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(consultationList[i].tvConsultations+str_consultations,style: TextStyle(
                                        fontSize: 12.sp,color: silver_67696c,fontFamily: circularXXTTTrialRegular
                                    ),),
                                    SizedBox(width: 4.w,),
                                    Image.asset(img_like,width: 20.w,height: 18.h,)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: line_gray_e2e2e6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              child: Text(str_next_available+consultationList[i].tvNextTime,style: TextStyle(
                                  fontFamily: interSemibold,color: bg_btn_199a8e,fontSize: 13.sp
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              selectConsultation(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color:bg_btn_199a8e,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20.r)
                                ),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 15.w),
                              child: Text(str_consult_now,style: TextStyle(
                                  fontFamily: interBold,color: Colors.white,fontSize: 13.sp
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
          ),
        ],
      ),
    ));
  }
  void selectConsultation(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor:Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r))),
              child: Wrap(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 15.h),
                          width: 50.w,
                          height: 3.h,
                          decoration: BoxDecoration(
                            color: line_gray_e2e2e6,
                            borderRadius: BorderRadius.circular(5.r)
                          ),
                        ),
                      ),
                      Container(
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
                                    fontSize: 17.sp,color: Colors.black,fontFamily: circularXXTTTrialMedium
                                ),),
                                SizedBox(height: 4.h,),
                                Text(str_Orthopedist,style: TextStyle(
                                    fontSize: 12.sp,color: silver_67696c,fontFamily: circularXXTTTrialRegular
                                ),),
                                SizedBox(height: 12.h,),
                                Text(str_exp_12_years,style: TextStyle(
                                    fontSize: 12.sp,color: grays_424448
                                ),),
                                SizedBox(height: 3.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(str_455_consultations,style: TextStyle(
                                        fontSize: 12.sp,color: silver_67696c,fontFamily: circularXXTTTrialRegular
                                    ),),
                                    SizedBox(width: 4.w,),
                                    Image.asset(img_like,width: 20.w,height: 18.h,)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 14.w),
                        height: 1,
                        width: double.infinity,
                        color: line_gray_e2e2e6,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 17.h,left: 14.w),
                          child: Text(str_qualification_title,style: TextStyle(fontSize: 14.sp,fontFamily: interSemibold,color: title_black_15181e),)),
                      Container(
                          margin: EdgeInsets.only(top: 4.h,left: 14.w),
                          child: Text(str_qualification,style: TextStyle(fontSize: 12.sp,fontFamily: interRegular,color: grays_424448),)),
                      Container(
                        margin: EdgeInsets.only(left: 14.w,right: 14.w,bottom: 25.h,top: 35.h),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text(str_next_timing,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.sp,
                                          fontFamily: interMedium),
                                    textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    height: 26.h,
                                    width: 1.5.w,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 28.w),
                                    child: Text(str_consult_now,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.sp,
                                          fontFamily: interBold),
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: bg_btn_199a8e,
                                onPrimary: Colors.white,
                                elevation: 0,
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.r),
                                  // side: BorderSide(color: skygreen_24d39e, width: 0),
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ));
        });
  }

}

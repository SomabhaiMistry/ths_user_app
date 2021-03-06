import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/Widgets/button.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';

import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';
import '../Model/subscription_plan_model.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class SelectSubscriptionPlanView extends StatefulWidget {
  const SelectSubscriptionPlanView({Key? key}) : super(key: key);

  @override
  State<SelectSubscriptionPlanView> createState() =>
      _SelectSubscriptionPlanViewState();
}

class _SelectSubscriptionPlanViewState extends State<SelectSubscriptionPlanView> {
  int myposition = -1;
  List<SubscriptionPlanModel> selectPlanList = [
    SubscriptionPlanModel("Single Consultation", "₹ 459",
        "we will provide you chat and video consultation"),
    SubscriptionPlanModel("Single Consultation", "₹ 559",
        "we will provide you chat and video consultation"),
    SubscriptionPlanModel("Single Consultation", "₹ 1559",
        "we will provide you chat and video consultation"),
    SubscriptionPlanModel("Single Consultation", "₹ 459",
        "we will provide you chat and video consultation"),
    SubscriptionPlanModel("Single Consultation", "₹ 559",
        "we will provide you chat and video consultation"),
    SubscriptionPlanModel("Single Consultation", "₹ 1559",
        "we will provide you chat and video consultation"),
  ];
  bool _selectedFirst = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bg_gray_f0f0f4,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ToolbarWithTitle(str_select_subscription_plan),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 15.h),
                    itemCount: selectPlanList.length,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () {
                        setState(() {
                          myposition = i;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 14.w, right: 14.w, bottom: 7.h),
                        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: shadow_0x0f041d42,
                              offset: const Offset(
                                3.0,
                                5.0,
                              ),
                              blurRadius: 7.0,
                              spreadRadius: 5.0,
                            )
                          ],
                          border: Border.all(
                            width: 1,
                            color: myposition == i ? orange_df6129 : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                          color: myposition == i ? light_orange_FCEFE6 : Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectPlanList[i].tvTitle,
                                  style: TextStyle(
                                      fontFamily: fontInterMedium,
                                      fontSize: 16.sp,
                                      color: title_black_15181e),
                                ),
                                Text(
                                  selectPlanList[i].tvPrice,
                                  style: TextStyle(
                                      fontFamily: fontInterMedium,
                                      fontSize: 16.sp,
                                      color: title_black_15181e),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              selectPlanList[i].tvSubtitle,
                              style: TextStyle(
                                  fontFamily: fontInterRegular,
                                  fontSize: 12.sp,
                                  color: hint_txt_909196),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 14.w, top: 20.h),
                    child: Text(
                      str_offers_benifits,
                      style: TextStyle(
                          fontFamily: fontInterSemibold,
                          fontSize: 14.sp,
                          color: light_black_3e4046),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 14.w),
                    margin: EdgeInsets.only(top: 16.h, left: 14.w, right: 14.w),
                    decoration: boxDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          str_apply_coupon,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: fontInterSemibold,
                              color: grays_424448),
                        ),
                        SvgPicture.asset(
                          icon_forward,
                          color: hint_txt_909196,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 14.w, top: 27.h),
                    child: Text(
                      str_payment_summary,
                      style: TextStyle(
                          fontFamily: fontInterSemibold,
                          fontSize: 14.sp,
                          color: light_black_3e4046),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 19.5.w),
                    margin: EdgeInsets.only(top: 16.h, left: 14.w, right: 14.w),
                    decoration: boxDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              str_total_amount,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterMedium,
                                  color: grays_424448),
                            ),
                            Text(
                              str_499,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterMedium,
                                  color: grays_424448),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              str_discount,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterMedium,
                                  color: grays_424448),
                            ),
                            Text(
                              str_fourty,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterMedium,
                                  color: bg_btn_199a8e),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const DottedLine(
                          direction: Axis.horizontal,
                          // lineLength: 50,
                          lineThickness: 1.0,
                          dashLength: 4.0,
                          dashColor: line_gray_e2e2e6,
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.transparent,
                          dashGapRadius: 0.0,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              str_tax,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterBold,
                                  color: grays_424448),
                            ),
                            Text(
                              str_fourty_five_nine,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterBold,
                                  color: grays_424448),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 14.w),
                    margin: EdgeInsets.only(top: 16.h, left: 14.w, right: 14.w),
                    decoration: boxDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedFirst = !_selectedFirst;
                              print("click thay che");
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(3.r)),
                                    border: Border.all(
                                        color: _selectedFirst ?   line_gray_e2e2e6 : orange_df6129,
                                        width: 1
                                    ),
                                    color: _selectedFirst ?Colors.white : light_orange_FCEFE6
                                ),
                                child: _selectedFirst ? Icon(
                                  Icons.check,
                                  size: 18.sp,
                                  color: Colors.white ,
                                ) : Icon(
                                  Icons.check,
                                  size: 18.sp,
                                  color:orange_df6129,
                                ),
                              ),

                              SizedBox(width: 11.w,),

                              Text(str_use_wallet_amount,style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontInterSemibold,
                                color:_selectedFirst ?   grays_424448 : orange_df6129,
                              ),)
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text(
                              str_alv_bal,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterMedium,
                                  color: hint_txt_909196),
                            ),
                            SizedBox(width:2.5.w,),
                            Text(
                              str_499,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontInterMedium,
                                  color: grays_424448),
                            ),

                          ],
                        )

                      ],
                    ),
                  ),
                  Container(margin: EdgeInsets.only(top: 24.h,bottom: 24.h), child: Button(str_pay))
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

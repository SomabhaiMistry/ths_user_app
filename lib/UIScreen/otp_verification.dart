import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ths_user_app/CommonLayout/button.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';

import '../CommonLayout/toolbar_with_title.dart';
import '../Styles/my_strings.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ToolbarWithTitle(str_mobile_verification),
          Container(
              margin: EdgeInsets.only(left: 14.w, top: 35.h),
              child: Text(
                str_enter_verification_code,
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: interBold,
                    color: title_black_15181e),
              )),
          Container(
              margin: EdgeInsets.only(left: 14.w, top: 5.h),
              child: Text(
                str_enter_verification_code_send_your_mobile_no,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: interRegular,
                    color: silver_67696c),
              )),
          Container(
              margin: EdgeInsets.only(left: 14.w, top: 2.h),
              child: Text(
                str_mobile_number,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: interMedium,
                    color: bg_btn_199a8e),
              )),
          SizedBox(height: 58.h,),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 200.w,
                child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.black,
                    primaryColorDark: Colors.black,
                    focusColor: Colors.black,
                    textSelectionTheme: TextSelectionThemeData(
                      cursorColor: Colors.black, //thereby
                    ),
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: false,
                    obscuringCharacter: '*',
                    obscuringWidget: null,
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    enablePinAutofill: true,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12.r),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        borderWidth: 1,
                        activeFillColor: bg_gray_f1eadc,
                        inactiveColor: silver_border_e5e7eb,
                        inactiveFillColor: silver_box_f9fafb,
                        errorBorderColor: Color(0xfff5f5f5),
                        activeColor: Color(0xfff5f5f5),
                        selectedColor: silver_border_e5e7eb,
                        selectedFillColor:silver_border_e5e7eb),
                    cursorColor: Colors.black,
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    boxShadows: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.transparent,
                        blurRadius: 2.r,
                      )
                    ],
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),

                ),
              ),
            ),
          ),
            Container(
              margin: EdgeInsets.only(left: 14.w, right: 14.w, bottom: 14.h),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    child: Text(
                      str_verify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: interSemibold),
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
            ),
          Container(
            margin: EdgeInsets.only(top: 0.h,bottom: 20.h),
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: str_didn_not_receive_the_code,
                    style: TextStyle(color:silver_67696c, fontSize: 14.sp,fontFamily: interMedium),
                    children: <TextSpan>[
                      TextSpan(text:str_resend,
                        style: TextStyle(color: bg_btn_199a8e, fontSize: 14.sp,fontFamily: interMedium),
                      ),
                    ]
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

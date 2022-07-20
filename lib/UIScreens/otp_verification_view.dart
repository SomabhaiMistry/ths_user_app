import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ths_user_app/Widgets/button.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';

import '../Widgets/toolbar_with_title.dart';
import '../Styles/my_strings.dart';

class OtpVerificationView extends StatefulWidget {
  const OtpVerificationView({Key? key}) : super(key: key);

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
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
                    fontFamily: fontInterBold,
                    color: title_black_15181e),
              )),
          Container(
              margin: EdgeInsets.only(left: 14.w, top: 5.h),
              child: Text(
                str_enter_verification_code_send_your_mobile_no,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: fontInterRegular,
                    color: silver_67696c),
              )),
          Container(
              margin: EdgeInsets.only(left: 14.w, top: 2.h),
              child: Text(
                str_mobile_number,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: fontInterMedium,
                    color: bg_btn_199a8e),
              )),
          SizedBox(height: 58.h,),
          Expanded(
            child: Center(
              child: Container(
                width: 150.w,
                alignment: Alignment.topCenter,
                child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.black,
                    primaryColorDark: Colors.black,
                    focusColor: Colors.black,
                    textSelectionTheme: const TextSelectionThemeData(
                      cursorColor: Colors.black, //thereby
                    ),
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: const TextStyle(
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
                        borderRadius: BorderRadius.circular(10.r),
                        fieldHeight: 37.6,
                        fieldWidth: 37.6,
                        borderWidth: 1,
                        activeFillColor: bg_gray_f1eadc,
                        inactiveColor: silver_border_e5e7eb,
                        inactiveFillColor: silver_box_f9fafb,
                        errorBorderColor: smoke_f5f5f5,
                        activeColor: smoke_f5f5f5,
                        selectedColor: silver_border_e5e7eb,
                        selectedFillColor:silver_border_e5e7eb),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
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
              margin: EdgeInsets.only(bottom: 14.h),
              child: Button(str_verify)),
          Container(
            margin: EdgeInsets.only(top: 0.h,bottom: 20.h),
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: str_didn_not_receive_the_code,
                    style: TextStyle(color:silver_67696c, fontSize: 14.sp,fontFamily: fontInterMedium),
                    children: <TextSpan>[
                      TextSpan(text:str_resend,
                        style: TextStyle(color: bg_btn_199a8e, fontSize: 14.sp,fontFamily: fontInterMedium),
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

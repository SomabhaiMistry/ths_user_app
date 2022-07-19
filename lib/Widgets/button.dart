import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ths_user_app/Styles/my_font.dart';

import '../Styles/my_colors.dart';

class Button extends StatelessWidget {

  final String btnTitle;
  Button(this.btnTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14.w, right: 14.w),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            child: Text(
              btnTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: fontInterSemibold),
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
    );
  }
}

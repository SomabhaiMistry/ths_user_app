import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

import '../Styles/my_icons.dart';

class LoginFirstPage extends StatelessWidget {
  const LoginFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bg_btn_199a8e,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 28.w,top: 48.h,bottom: 24.h),
                child: SvgPicture.asset(icon_logo_second),
              ),
              Image.asset(
                img_first_login,
                width: double.infinity,
                height: 364.h,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ));
  }
}

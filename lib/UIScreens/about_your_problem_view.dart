import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/UIScreens/second_page.dart';
import 'package:ths_user_app/UIScreens/third_page.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import 'first_page.dart';

class AboutYourProblemView extends StatefulWidget {
  const AboutYourProblemView({Key? key}) : super(key: key);

  @override
  State<AboutYourProblemView> createState() => _AboutYourProblemViewState();
}

class _AboutYourProblemViewState extends State<AboutYourProblemView> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    new Center(child: new FirstPage()),
    new Center(child: new SecondPage()),
    new Center(child: new ThirdPage()),
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bg_gray_f0f0f4,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 14.w),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(icon_back_arrow),
                ),
                SizedBox(
                  width: 16.3.w,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    str_tell_us_about_your_problem,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: title_black_15181e,
                        fontFamily: fontInterSemibold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 5.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26.r),
                      color: orange_light_f1eadc
                  ),
                  child: Text(
                    (_curr + 1).toString() + "/" + _list.length.toString(),

                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black87,
                        fontFamily: fontInterSemibold,),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: PageView(
              children: _list,
              scrollDirection: Axis.horizontal,
              // reverse: true,
              // physics: BouncingScrollPhysics(),
              controller: controller,
              onPageChanged: (num) {
                setState(() {
                  _curr = num;
                });
              },
            ),
          ),
        ],
      ),
    ));
  }
}

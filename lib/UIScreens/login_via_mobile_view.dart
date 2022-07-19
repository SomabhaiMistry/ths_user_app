import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/button.dart';
import '../Widgets/indicator.dart';
import 'login_first_page.dart';

class LoginViaMobileView extends StatefulWidget {
  const LoginViaMobileView({Key? key}) : super(key: key);

  @override
  State<LoginViaMobileView> createState() => _LoginViaMobileViewState();
}

class _LoginViaMobileViewState extends State<LoginViaMobileView> {

  final PageController controller = PageController(initialPage: 0);

  int _currentIndex = 0;
  late PageController _pageController;

  void _pageChanged(int index) {
    setState(() {});
  }

  bool _selectedFirst = true;

  TextEditingController phoneNumberText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   systemNavigationBarColor: Colors.white, // navigation bar color
    //   statusBarColor: bg_btn_199a8e, // status bar color
    //   statusBarIconBrightness: Brightness.dark, // status bar icons' color
    //   systemNavigationBarIconBrightness:
    //   Brightness.light, //navigation bar icons' color
    // ));
    return SafeArea(
        child: Scaffold(
          backgroundColor: bg_btn_199a8e,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  alignment: FractionalOffset.bottomCenter,
                  children: [
                    PageView(
                        controller: controller,
                        onPageChanged: (index) {
                          setState(() => _currentIndex = index);
                        },
                        children: <Widget>[
                          Container(
                            child: const LoginFirstPage(),
                          ),
                          Container(
                              child: const LoginFirstPage()
                          ),
                          Container(
                              child: const LoginFirstPage()
                          ),
                        ]),
                    Container(
                      padding: EdgeInsets.only(top: 25.h,bottom: 25.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.r),
                              topLeft: Radius.circular(30.r))
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Book an online appointment with the best doctors with in 60 secs.
                          Padding(
                            padding:  EdgeInsets.only(left: 25.w,right: 25.w),
                            child: Text(
                                str_book_an_online,
                                style:  TextStyle(
                                    color:  light_black_3e4046,
                                    fontFamily: fontInterSemibold,
                                    fontStyle:  FontStyle.normal,
                                    height: 1.2,
                                    fontSize: 16.sp
                                ),
                                textAlign: TextAlign.center
                            ),
                          ),
                          SizedBox(height: 25.h,),
                          Indicator(
                            controller: controller,
                            itemCount: 3,
                          ),
                          SizedBox(height: 25.h,),
                          Container(
                            margin:    EdgeInsets.only(left: 14.w,right: 14.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(11.r)),
                                border: Border.all(
                                    width: 1,
                                    color: line_gray_e2e2e6
                                ),
                                color: Colors.white),
                            child: Padding(
                              padding:  EdgeInsets.all(14.r),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(icon_mobile),
                                  SizedBox(width: 14.w,),
                                  Expanded(
                                    flex: 1,
                                    child: Theme(
                                        data: ThemeData(
                                          primaryColor: Colors.green,
                                          primaryColorDark: Colors.red,
                                        ),
                                        child: TextFormField(
                                          controller:
                                          phoneNumberText,
                                          style: TextStyle(
                                              color: subtitle_black_101623,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: fontInterMedium,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.sp),
                                          decoration: InputDecoration(
                                            isDense: true,
                                            contentPadding: EdgeInsets.zero,
                                            hintText: str_enter_your_mobile_number,
                                            hintStyle: TextStyle(
                                                color: hint_txt_909196,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: fontInterMedium,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 16.sp),
                                            border: InputBorder.none,
                                          ),
                                          textInputAction: TextInputAction.done,
                                          keyboardType: TextInputType.number,
                                          cursorColor: subtitle_black_101623,
                                          validator: (value) {
                                            if (value != null) {
                                              return null;
                                            } else {
                                              return 'Enter code';
                                            }
                                          },
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h,),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _selectedFirst = !_selectedFirst;
                                print("click thay che");
                              });
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(left: 14.w,right: 14.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(3.r)),
                                        border: Border.all(
                                            color: _selectedFirst ?   line_gray_e2e2e6 : bg_btn_199a8e,
                                            width: 1
                                        ),
                                        color: _selectedFirst ?  const Color(0xffffffff) : bg_btn_199a8e
                                    ),
                                    child: _selectedFirst ? Icon(
                                      Icons.check,
                                      size: 18.sp,
                                      color: Colors.white,
                                    ) : Icon(
                                      Icons.check,
                                      size: 18.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 6.w,),
                                  // Same as Business address
                                  RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                style:  TextStyle(
                                                    color:  black_4d5764,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: fontInterMedium,
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 14.sp
                                                ),
                                                text: str_i_agree_with),
                                            TextSpan(
                                                style:  TextStyle(
                                                    color:  bg_btn_199a8e,
                                                    fontFamily: fontInterMedium,
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 14.sp
                                                ),
                                                text: str_terms_conditions),

                                          ]
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25.h,),
                          Button(str_proceed_to_pay),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ths_user_app/UIScreens/about_your_problem_view.dart';
import 'package:ths_user_app/UIScreens/all_health_problem_view.dart';
import 'package:ths_user_app/UIScreens/list_screen.dart';
import 'package:ths_user_app/UIScreens/otp_verification_view.dart';
import 'package:ths_user_app/UIScreens/personal_information_view.dart';
import 'package:ths_user_app/UIScreens/select_time_sloat_view.dart';
import 'package:ths_user_app/UIScreens/wallet_tab.dart';

import '../Styles/my_icons.dart';
import 'consultations_tab.dart';
import 'home_tab.dart';
import 'lab_test_tab.dart';
import 'more_tab.dart';

class HomePageMedicalView extends StatefulWidget {
  @override
  _HomePageMedicalViewState createState() => _HomePageMedicalViewState();
}

class _HomePageMedicalViewState extends State<HomePageMedicalView> {

  int _currentIndex = 0;
  final tabs =  [
    new Container(
      child: HomeTab(),
    ),
    new Container(
      child: ConsultationsTab(),
    ),
    new Container(
      child: LabTestTab(),
    ),
    new Container(
      child: WalletTab(),
    ),
    new Container(
      child: MoreTab(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor:  Colors.white, // navigation bar color
      statusBarColor:  Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));

    return Scaffold(
      backgroundColor: Colors.pink,
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff424448),
          unselectedItemColor: Color(0xff8d8f91),
          currentIndex: _currentIndex,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 6,
          type: BottomNavigationBarType.fixed,

          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(icon_home,width: 25,height: 25,color: Colors.pink,),
              activeIcon: SvgPicture.asset(icon_home,width: 25,height: 25,color: Colors.blue,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(icon_consultation,width: 25,height: 25,color: Colors.black,),
              activeIcon: SvgPicture.asset(icon_consultation,width: 25,height: 25,color: Colors.yellow,),
              label: "Consultation",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(icon_lab_test,width: 25,height: 25,),
              activeIcon: SvgPicture.asset(icon_lab_test,width: 25,height: 25),
              label: "Lab Test",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(icon_wallet,width: 25,height: 25,),
              activeIcon: SvgPicture.asset(icon_wallet,width: 25,height: 25),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(icon_home,width: 25,height: 25,),
              activeIcon: SvgPicture.asset(icon_home,width: 25,height: 25),
              label: "More",
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

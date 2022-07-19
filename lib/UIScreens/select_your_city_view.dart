import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ths_user_app/Widgets/button.dart';
import 'package:ths_user_app/Widgets/toolbar_with_title.dart';
import 'package:ths_user_app/Model/select_city_model.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

import '../Widgets/searchbar.dart';
import '../Styles/my_font.dart';
import '../Styles/my_strings.dart';

class SelectYourCityView extends StatefulWidget {
  const SelectYourCityView({Key? key}) : super(key: key);

  @override
  State<SelectYourCityView> createState() => _SelectYourCityViewState();
}

class _SelectYourCityViewState extends State<SelectYourCityView> {
  int myposition = -1;
  List<SelectCityModel> selectCityList = [
    SelectCityModel("Surat"),
    SelectCityModel("Gandhinagar", ),
    SelectCityModel("Rajkot", ),
    SelectCityModel("Bhavnagar", ),
    SelectCityModel("Jamnagar", ),
    SelectCityModel("Vadodara",),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: bg_gray_f0f0f4,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToolbarWithTitle(str_select_your_city),
            SizedBox(height: 14.h,),
            SearchBar(str_search_city),
            SizedBox(height: 18.h,),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                primary: false,
                shrinkWrap: true,
                itemCount: selectCityList.length,
                itemBuilder: (context, i) => GestureDetector(
                  onTap: (){
                    setState(() {
                      myposition = i;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 14.w),
                    padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: myposition== i? bg_btn_199a8e : Colors.transparent,),
                    child: Text(
                      selectCityList[i].tvSelectCity,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: fontInterMedium,
                          color: myposition== i? Colors.white : subtitle_black_101623),
                    ),
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 24.h),
                child: Button(str_next)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ths_user_app/CommonLayout/button.dart';
import 'package:ths_user_app/CommonLayout/toolbar_with_title.dart';
import 'package:ths_user_app/Model/SelectCityModel.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

import '../CommonLayout/searchbar.dart';
import '../Styles/my_font.dart';
import '../Styles/my_strings.dart';

class SelectYourCityView extends StatefulWidget {
  const SelectYourCityView({Key? key}) : super(key: key);

  @override
  State<SelectYourCityView> createState() => _SelectYourCityViewState();
}

class _SelectYourCityViewState extends State<SelectYourCityView> {
  int position = 7;
  List<SelectCityModel> selectCityList = [
    SelectCityModel("Surat", id: 1),
    SelectCityModel("Gandhinagar", id: 2),
    SelectCityModel("Rajkot", id: 3),
    SelectCityModel("Bhavnagar", id: 4),
    SelectCityModel("Jamnagar", id: 5),
    SelectCityModel("Vadodara", id: 6),
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
                  onTap: () {
                    setState(() {
                      position = selectCityList[i].id;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 14.w),
                    padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 12.w),
                    decoration: BoxDecoration(
                      // border: Border.all(color: position == selectCityList[i].id ? pink_ff5465 : gray_9d9d9d, width: 0.8),
                      borderRadius: BorderRadius.circular(10.r),
                      color: position == selectCityList[i].id ? bg_btn_199a8e : Colors.transparent,),
                    child: Text(
                      selectCityList[i].tvSelectCity,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: interMedium,
                          color: position == selectCityList[i].id ? Colors.white : subtitle_black_101623),
                    ),
                  ),
                ),
              ),
            ),
            Button(str_next)
          ],
        ),
      ),
    );
  }
}

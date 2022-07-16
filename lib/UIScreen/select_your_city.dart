import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/CommonLayout/button.dart';
import 'package:ths_user_app/CommonLayout/toolbar_with_title.dart';
import 'package:ths_user_app/Model/SelectCityModel.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class SelectYourCity extends StatefulWidget {
  const SelectYourCity({Key? key}) : super(key: key);

  @override
  State<SelectYourCity> createState() => _SelectYourCityState();
}

class _SelectYourCityState extends State<SelectYourCity> {
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

            Container(
              margin: EdgeInsets.only(top: 14.h, right: 14.w, left: 14.w),
              padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.3.w),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.w),
                  borderRadius: BorderRadius.all(Radius.circular(14.r)),
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:
                    Color(0x0f041d42),
                    offset: const Offset(3.0, 5.0,),
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                ],
              ),
              child: Row(
                children: [
                  SvgPicture.asset(icon_search),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: TextField(
                      // controller: titleController,
                      style: const TextStyle(
                          color: title_black_15181e,
                          fontFamily: interSemibold,
                          fontSize: 14.0),
                      decoration: new InputDecoration(
                        isDense: true,
                        hintText: str_search_city,
                        hintStyle: TextStyle(
                            color: hint_txt_909196,
                            fontFamily: interSemibold,
                            fontSize: 14.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ],
              ),
            ),
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

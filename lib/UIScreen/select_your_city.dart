import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ths_user_app/CommonLayout/button.dart';
import 'package:ths_user_app/CommonLayout/toolbar_with_title.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

import '../Styles/my_font.dart';
import '../Styles/my_strings.dart';

class SelectYourCity extends StatefulWidget {
  const SelectYourCity({Key? key}) : super(key: key);

  @override
  State<SelectYourCity> createState() => _SelectYourCityState();
}

class _SelectYourCityState extends State<SelectYourCity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: bg_gray_f0f0f4,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToolbarWithTitle("Select your City"),


            Container(
              margin: EdgeInsets.only(top: 14.h, right: 14.w, left: 14.w),
              padding: EdgeInsets.symmetric(vertical: 19.8.h, horizontal: 16.3.w),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.white),
              child: new TextField(
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



            Button("Next")


          ],
        ),
      ),
    );
  }
}

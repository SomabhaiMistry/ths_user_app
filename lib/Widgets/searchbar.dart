import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import 'box_shadow.dart';

class SearchBar extends StatelessWidget {

  final String title;
  SearchBar(this.title);

@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14.w, left: 14.w),
      padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.3.w),
      decoration: boxDecoration,
      child: Row(
        children: [
          SvgPicture.asset(icon_search),
          SizedBox(width: 10.w,),
          Expanded(
            child: TextField(
              // controller: titleController,
              style: const TextStyle(
                  color: title_black_15181e,
                  fontFamily: fontInterSemibold,
                  fontSize: 14.0),
              decoration: new InputDecoration(
                isDense: true,
                hintText: title,
                hintStyle: TextStyle(
                    color: hint_txt_909196,
                    fontFamily: fontInterSemibold,
                    fontSize: 14.0),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
    );
  }
}
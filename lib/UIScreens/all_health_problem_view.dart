import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ths_user_app/Model/healthProblem_model.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/Styles/my_icons.dart';

import '../Widgets/toolbar_with_title.dart';
import '../Styles/my_strings.dart';

class AllHealthProblemsView extends StatefulWidget {
  const AllHealthProblemsView({Key? key}) : super(key: key);

  @override
  State<AllHealthProblemsView> createState() => _AllHealthProblemsViewState();
}

class _AllHealthProblemsViewState extends State<AllHealthProblemsView> {
  List<HealthProblemModel> healthProblemList = [
    HealthProblemModel(icon_logo,"Skin & Hair"),
    HealthProblemModel(icon_logo,"Covid"),
    HealthProblemModel(icon_logo,"Dental care"),
    HealthProblemModel(icon_logo,"Bones & Joints"),
    HealthProblemModel(icon_logo,"Mental wellness"),
    HealthProblemModel(icon_logo,"Women’s Health"),
    HealthProblemModel(icon_logo,"General physicain"),
    HealthProblemModel(icon_logo,"Heart"),
    HealthProblemModel(icon_logo,"Eye Specialist"),
    HealthProblemModel(icon_logo,"Women’s Health"),
    HealthProblemModel(icon_logo,"General physicain"),
    HealthProblemModel(icon_logo,"Heart"),
    HealthProblemModel(icon_logo,"Eye Specialist"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ToolbarWithTitle(str_all_health_problems),

          Container(width: double.infinity, height: 1, color: line_gray_e2e2e6,),

          // SizedBox(height: 21.h,),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 21.h),
              itemCount: healthProblemList.length,
              itemBuilder: (context, i) =>
                  Container(
                    margin: EdgeInsets.only(left: 14.w,right: 14.w,bottom: 19.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipOval(child: Container(
                            color: Colors.yellow,
                            child: Image.asset(healthProblemList[i].imgDisease,width: 59.w,height: 59.h,))),
                        SizedBox(width: 12.w,),
                        Expanded(
                          child: Text(healthProblemList[i].tvDiseaseName,style: TextStyle(
                              fontFamily: fontInterSemibold,color: title_black_15181e,fontSize: 14.sp
                          ),),
                        ),
                        SvgPicture.asset(icon_forward)
                      ],
                    ),
                  ),
            ),
          ),
        ],
      ),
    ));
  }
}

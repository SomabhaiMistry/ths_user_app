import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ths_user_app/Model/select_city_model.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
import 'package:ths_user_app/Widgets/button.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class SelectTimeSlotView extends StatefulWidget {
  const SelectTimeSlotView({Key? key}) : super(key: key);

  @override
  State<SelectTimeSlotView> createState() => _SelectTimeSlotViewState();
}

class _SelectTimeSlotViewState extends State<SelectTimeSlotView> {
  int myposition = -1;
  List<SelectCityModel> selectDateList = [
    SelectCityModel("Today"),
    SelectCityModel("Tomorrow"),
    SelectCityModel("6/6/2022"),
    SelectCityModel("7/6/2022"),
    SelectCityModel("8/6/2022"),
  ];

  List<String> _base = [

    'Morning',
    'Afternoon',
    'Evening'
  ];

  List<Scenario> elencoSensori = [
    Scenario(
      base: 'Morning',
      titolo1: 'Sensor1',
      titolo2: 'Sensor2',
      titolo3: 'Sensor3',
      icon1: Icons.sensors,
      icon2: Icons.sensors,
      icon3: Icons.sensors,
      iconColor1: Colors.white,
      iconColor2: Colors.white,
      iconColor3: Colors.white,
      btnColor1: Colors.white,
      btnColor2: Colors.white,
      btnColor3: Colors.white,
    ),
    Scenario(
      base: 'Afternoon',
      titolo1: 'Sensor1',
      titolo2: 'Sensor2',
      titolo3: 'Sensor3',
      icon1: Icons.sensors,
      icon2: Icons.sensors,
      icon3: Icons.sensors,
      iconColor1: Colors.white,
      iconColor2: Colors.white,
      iconColor3: Colors.white,
      btnColor1: Colors.white,
      btnColor2: Colors.white,
      btnColor3: Colors.white,
    ),
    Scenario(
      base: 'Evening',
      titolo1: 'Sensor1',
      titolo2: 'Sensor2',
      icon1: Icons.sensors,
      icon2: Icons.sensors,
      iconColor1: Colors.white,
      iconColor2: Colors.white,
      btnColor1: Colors.white,
      btnColor2:Colors.white,
    ),
  ];

  int mypositionSecond = -1;

  List<SelectCityModel> onSelectCityModel = [
    SelectCityModel('12:00 Pm'),
    SelectCityModel('12:30 Am'),
    SelectCityModel('01:00 Am'),
    SelectCityModel('01:30 Am'),
    SelectCityModel('02:00 Am'),
    SelectCityModel('12:00 Pm'),
    SelectCityModel('12:30 Am'),
    SelectCityModel('01:00 Am'),
    SelectCityModel('01:30 Am'),
    SelectCityModel('02:00 Am'),
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
          ToolbarWithTitle(str_select_time_slot),
          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.h, left: 14.w, right: 14.w),
                    padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.h),
                    decoration: boxDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipOval(
                            child: Container(
                                color: Colors.yellow,
                                child: Image.asset(
                                  icon_logo,
                                  width: 57.w,
                                  height: 57.h,
                                ))),
                        SizedBox(
                          width: 14.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              str_dr_name,
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontFamily: fontInterSemibold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 2.5.h,
                            ),
                            Text(
                              str_Orthopedist,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: fontInterRegular,
                                  color: silver_67696c),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 14.w, top: 21.h),
                      child: Text(
                        str_select_date,
                        style: TextStyle(
                            fontFamily: fontInterSemibold,
                            fontSize: 14.sp,
                            color: light_black_3e4046),
                      )),
                  Container(
                    height: 100.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 14.w),
                      itemCount: selectDateList.length,
                      itemBuilder: (context, i) => GestureDetector(
                        onTap: () {
                          setState(() {
                            myposition = i;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10.w,top: 16.h),
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(width: 1, color: myposition == i ? orange_df6129 : Colors.white),
                              color: myposition == i ? light_orange_FCEFE6 : Colors.white),
                          child: Text(
                            selectDateList[i].tvSelectCity,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: fontInterMedium,
                                color: myposition == i ? title_black_15181e : grays_424448),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 14.w, top: 21.h),
                      child: Text(
                        str_select_time,
                        style: TextStyle(
                            fontFamily: fontInterSemibold,
                            fontSize: 14.sp,
                            color: light_black_3e4046),
                      )),

                  Container(
                    width: double.infinity,

                    margin: EdgeInsets.only(top: 16.h,left: 14.w,right: 16.w,bottom: 20.h),
                    decoration: boxDecoration,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.only(left: 7,right: 7),
                          itemCount: _base.length,
                          itemBuilder: (_, index) {
                            return Column(
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                  child: ExpansionTile(
                                      collapsedTextColor: Colors.white,
                                      textColor: Colors.white,
                                      collapsedIconColor: Colors.black,
                                      iconColor: Colors.black,
                                      initiallyExpanded: false,
                                      title: Row(
                                        children: [


                                          Text(
                                              _base[index].toString(),
                                              style:  TextStyle(
                                                  color: grays_424448,
                                                  fontFamily: fontInterMedium,
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 14.sp
                                              ),
                                              textAlign: TextAlign.left
                                          ),
                                          SizedBox(width: 4.h,),
                                          // @rush
                                          Text(
                                              "Not available",
                                              style:  TextStyle(
                                                  color: hint_txt_909196,
                                                  fontFamily: fontInterRegular,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 12.sp
                                              ),
                                              textAlign: TextAlign.left
                                          ),
                                        ],
                                      ),
                                      children: [
                                        ...elencoSensori.map((e) {
                                          if (e.base == _base[index]) {
                                            return Container(
                                              child: Column(children: [
                                                GridView.builder(
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  padding: EdgeInsets.only(left: 8.w,right: 8.w),
                                                  gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      childAspectRatio: 1.h,
                                                      mainAxisExtent: 50,
                                                      mainAxisSpacing: 0.0,
                                                      crossAxisSpacing: 0.0),
                                                  itemCount: onSelectCityModel.length,
                                                  itemBuilder: (context, i) => GestureDetector(
                                                    onTap: (){
                                                      setState(() {
                                                        mypositionSecond = i;
                                                      });
                                                    },
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          decoration:(
                                                              BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(40.r),
                                                                  border: Border.all(
                                                                    width: 1,
                                                                    color: mypositionSecond==i? orange_df6129:line_gray_e2e2e6,
                                                                  ),
                                                                  color: mypositionSecond==i? light_orange_fcefe6:Colors.white
                                                              )
                                                          ),
                                                          child: Padding(
                                                            padding:  EdgeInsets.only(left: 15.w,right: 15.w,bottom: 8.h,top: 8.h),
                                                            child: Text(onSelectCityModel[i].tvSelectCity,
                                                              style: TextStyle(
                                                                  fontSize: 14.sp,
                                                                  fontFamily: fontInterMedium,
                                                                  color: mypositionSecond==i?orange_df6129:grays_424448
                                                              ),),
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ]),
                                            );
                                          }
                                          return Container();
                                        }).toList(),
                                      ]
                                  ),
                                ),
                                //   SizedBox(height: 10,),
                                const DottedLine(
                                  direction: Axis.horizontal,
                                  // lineLength: 50,
                                  lineThickness: 1.0,
                                  dashLength: 4.0,
                                  dashColor:line_gray_e2e2e6,
                                  dashRadius: 0.0,
                                  dashGapLength: 4.0,
                                  dashGapColor: Colors.transparent,
                                  dashGapRadius: 0.0,
                                ),
                              ],
                            );
                          },
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          
          
          Button(str_next),
          SizedBox(height:29.h)
        ],
      ),
    ));
  }
}

class Scenario {
  String? base;
  String? titolo1;
  String? titolo2;
  String? titolo3;
  String? titolo4;
  String? titolo5;
  IconData? icon1;
  IconData? icon2;
  IconData? icon3;
  IconData? icon4;
  IconData? icon5;
  Color? iconColor1;
  Color? iconColor2;
  Color? iconColor3;
  Color? iconColor4;
  Color? iconColor5;
  Color? btnColor1;
  Color? btnColor2;
  Color? btnColor3;
  Color? btnColor4;
  Color? btnColor5;
  Scenario({this.base, this.titolo1,
    this.titolo2, this.titolo3,
    this.titolo4, this.titolo5,
    this.icon1, this.icon2,
    this.icon3, this.icon4,
    this.icon5, this.iconColor1,
    this.iconColor2, this.iconColor3,
    this.iconColor4, this.iconColor5,
    this.btnColor1, this.btnColor2,
    this.btnColor3, this.btnColor4,
    this.btnColor5});
}

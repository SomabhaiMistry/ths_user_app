import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Model/MultiStoreOrderModel.dart';
import '../Model/select_city_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';


class MultiStoreOrderDetail extends StatefulWidget {
  const MultiStoreOrderDetail({Key? key}) : super(key: key);

  @override
  State<MultiStoreOrderDetail> createState() => _MultiStoreOrderDetailState();
}

class _MultiStoreOrderDetailState extends State<MultiStoreOrderDetail> {

  bool statussecond = false;
  bool statusthird = false;
  bool status = false;

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
      iconColor1: kYellowDark,
      iconColor2: kRedDark,
      iconColor3: kBlueDark,
      btnColor1: kYellowLight,
      btnColor2: kRedLight,
      btnColor3: kBlueLight,
    ),
    Scenario(
      base: 'Afternoon',
      titolo1: 'Sensor1',
      titolo2: 'Sensor2',
      titolo3: 'Sensor3',
      icon1: Icons.sensors,
      icon2: Icons.sensors,
      icon3: Icons.sensors,
      iconColor1: kYellowDark,
      iconColor2: kRedDark,
      iconColor3: kBlueDark,
      btnColor1: kYellowLight,
      btnColor2: kRedLight,
      btnColor3: kBlueLight,
    ),
    Scenario(
      base: 'Evening',
      titolo1: 'Sensor1',
      titolo2: 'Sensor2',
      icon1: Icons.sensors,
      icon2: Icons.sensors,
      iconColor1: kYellowDark,
      iconColor2: kRedDark,
      btnColor1: kYellowLight,
      btnColor2: kRedLight,
    ),
  ];

  List<MultiStoreOrderModel> onMultiStoreOrderModel = [
    MultiStoreOrderModel("4",'Product name \nin 2 line'),
    MultiStoreOrderModel("bsdjkb", 'Product name \nin 2 line'),
    MultiStoreOrderModel("789", 'Product name \nin 2 line'),

  ];

  int myposition = -1;

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
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24,top: 12,bottom: 12),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pink
                            ),
                            child: Icon(Icons.person,size: 18,),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child: Text(
                                "Deliver to uyi ",
                                style:  TextStyle(
                                    color:   Color(0xff273433),
                                    fontSize: 12.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),
                          Row(
                            children: [
                              // 1226 University Dr
                              Text(
                                  "1226 University Dr",
                                  style:  TextStyle(
                                      color:  black_4d5764,
                                      fontWeight: FontWeight.w500,
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 11.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                              SizedBox(width: 4,),
                              SvgPicture.asset(icon_forward,width: 10,height: 10,color: orange_df6129,),

                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                      height: 1,
                      color: Color(0xfff4f6f6),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 24,top: 22,bottom: 16),
                      child: Row(
                        children: [

                          SvgPicture.asset(icon_back_arrow,width: 10,height: 10,),
                          // Total 12 items
                          SizedBox(width: 3,),
                          Text(
                              "Total 12 items",
                              style:  TextStyle(
                                  color:  black_4d5764,
                                  fontWeight: FontWeight.w500,
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 12.sp
                              ),
                              textAlign: TextAlign.center
                          )
                        ],
                      ),
                    ),

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
                                  collapsedTextColor: kWhite,
                                  textColor: kWhite,
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
                                              padding: EdgeInsets.only(left: 8.w,right: 8.w,top: 10.h),
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
                                                    myposition = i;
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
                                                     color: myposition==i? orange_df6129:line_gray_e2e2e6,
                                                   ),
                                                   color: myposition==i? light_orange_fcefe6:Colors.white
                                                 )
                                                ),
                                                     child: Padding(
                                                       padding:  EdgeInsets.only(left: 15.w,right: 15.w,bottom: 8.h,top: 8.h),
                                                       child: Text(onSelectCityModel[i].tvSelectCity,
                                                         style: TextStyle(
                                                           fontSize: 14.sp,
                                                           fontFamily: fontInterMedium,
                                                           color: myposition==i?orange_df6129:grays_424448
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
                            Divider(
                              color:line_gray_e2e2e6,
                              // height: 15,
                              thickness: 1,

                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
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
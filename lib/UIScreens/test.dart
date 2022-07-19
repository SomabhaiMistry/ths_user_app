import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ths_user_app/Styles/my_colors.dart';
import 'package:ths_user_app/Styles/my_font.dart';
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final List<League> data = <League>[
    League(
      'Morning',
      'Not Available',
      <Club>[
        Club("7:00 Am"),
        Club("7:30 Am"),
        Club("8:00 Am"),
        Club("8:30 Am"),
        Club("9:00 Am"),
      ],
    ),
    League(
      'Afternoon',
      '7 Slot Available',
      <Club>[
        Club("2:00 Pm"),
        Club("2:30 Pm"),
        Club("3:00 Pm"),
        Club("3:30 Pm"),
        Club("4:00 Pm"),
      ],
    ),
    League(
      'Evening',
      '3 Slot Available',
      <Club>[
        Club("7:00 Pm"),
        Club("7:30 Pm"),
        Club("8:00 Pm"),
        Club("8:30 Pm"),
        Club("9:00 Pm"),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) =>
                MyExpandableWidget(data[index]),
            itemCount: data.length,
          ),
        ],
      ),
    ));
  }
}

class MyExpandableWidget extends StatelessWidget {
  final League league;
  MyExpandableWidget(this.league);
  @override
  Widget build(BuildContext context) {
    if (league.listClubs.isEmpty)
      return ListTile(title: Text(league.TvTitle));
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        key: PageStorageKey<League>(league),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(league.TvTitle, style: TextStyle(fontSize: 14, fontFamily: fontInterMedium, color:grays_424448)),
            SizedBox(width: 5.w,),
            Text(league.tvSubTitle, style: TextStyle(fontSize: 12, fontFamily: fontInterRegular, color:hint_txt_909196)),
          ],
        ),
        children: league.listClubs
            .map<Widget>((club) => showClubs(club))
            .toList(),
      ),
    );
  }
}

showClubs(Club club) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      // const DottedLine(
      //   direction: Axis.horizontal,
      //   // lineLength: 50,
      //   lineThickness: 1.0,
      //   dashLength: 4.0,
      //   dashColor:line_gray_e2e2e6,
      //   dashRadius: 0.0,
      //   dashGapLength: 4.0,
      //   dashGapColor: Colors.transparent,
      //   dashGapRadius: 0.0,
      // ),
      Container(
        margin: EdgeInsets.only(bottom: 5.h),
        padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 12.w),
        decoration: BoxDecoration(
          color: light_orange_FCEFE6,
          border: Border.all(width: 1,color: orange_df6129),
          borderRadius: BorderRadius.circular(18.r)
        ),
        child: Text(club.tvTime,style: TextStyle(
            fontSize: 14.sp,fontFamily: fontInterMedium,
            color: orange_df6129
        ),),
      ),


    ],
  );
}
class League {
  String TvTitle,tvSubTitle;
  List<Club> listClubs;
  League(this.TvTitle,this.tvSubTitle, this.listClubs);
}

class Club {
  String tvTime;
  Club(this.tvTime);
}
import 'package:flutter/material.dart';

import '../Styles/my_colors.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List<League> _base = [
    League("A", "B"),
    League("C", "D"),
    League("E", "F"),
  ];
  List<Scenario> elencoSensori = [
    Scenario(
      base: 'Built-In Sensor',
      titolo1: 'Sensor1',
      titolo2: 'Sensor2',
      titolo3: 'Sensor3',
      titolo4: 'Sensor4',
      titolo5: 'Sensor5',
      icon1: Icons.sensors,
      icon2: Icons.sensors,
      icon3: Icons.sensors,
      icon4: Icons.sensors,
      icon5: Icons.sensors,
      iconColor1: kYellowDark,
      iconColor2: kRedDark,
      iconColor3: kBlueDark,
      iconColor4: kGreenDark,
      iconColor5: kYellowDark,
      btnColor1: kYellowLight,
      btnColor2: kRedLight,
      btnColor3: kBlueLight,
      btnColor4: kGreenLight,
      btnColor5: kYellowLight,
    ),
    Scenario(
      base: 'Smartphone Sensor',
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
      base: 'Expandable Sensor',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          //color: const Color(0xFF36383C),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _base.length,
            itemBuilder: (_, index) {
              return ExpansionTile(
                  collapsedTextColor: kWhite,
                  textColor: kWhite,
                  collapsedIconColor: kWhite,
                  iconColor: kWhite,
                  initiallyExpanded: true,
                  title: Row(
                    children: [
                      Text(_base[index].TvTitle,
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(_base[index].tvSubTitle,
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  children: [
                    ...elencoSensori.map((e) {
                      if (e.base == _base[index]) {
                        return Container(
                          child: Column(children: [
                            if (e.base == 'Built-In Sensor') ...[
                              GridView.count(shrinkWrap: true, physics: ClampingScrollPhysics(), primary: false, padding: const EdgeInsets.all(20), crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2, children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor1,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon1,
                                      color: elencoSensori[index].iconColor1,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo1.toString(),
                                      style: TextStyle(
                                        color: e.iconColor1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor2,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon2,
                                      color: elencoSensori[index].iconColor2,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo2.toString(),
                                      style: TextStyle(
                                        color: e.iconColor2,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor3,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon3,
                                      color: elencoSensori[index].iconColor3,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo3.toString(),
                                      style: TextStyle(
                                        color: e.iconColor3,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor4,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon4,
                                      color: elencoSensori[index].iconColor4,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo4.toString(),
                                      style: TextStyle(
                                        color: e.iconColor4,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor5,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon5,
                                      color: elencoSensori[index].iconColor5,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo5.toString(),
                                      style: TextStyle(
                                        color: e.iconColor5,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                            ] else if (e.base == 'Smartphone Sensor') ...[
                              GridView.count(shrinkWrap: true, physics: ClampingScrollPhysics(), primary: false, padding: const EdgeInsets.all(20), crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2, children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor1,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon1,
                                      color: elencoSensori[index].iconColor1,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo1.toString(),
                                      style: TextStyle(
                                        color: e.iconColor1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor2,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon2,
                                      color: elencoSensori[index].iconColor2,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo2.toString(),
                                      style: TextStyle(
                                        color: e.iconColor2,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor3,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon3,
                                      color: elencoSensori[index].iconColor3,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo3.toString(),
                                      style: TextStyle(
                                        color: e.iconColor3,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                            ] else if (e.base == 'Expandable Sensor') ...[
                              GridView.count(shrinkWrap: true, physics: ClampingScrollPhysics(), primary: false, padding: const EdgeInsets.all(20), crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2, children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor1,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon1,
                                      color: elencoSensori[index].iconColor1,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo1.toString(),
                                      style: TextStyle(
                                        color: e.iconColor1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: e.btnColor2,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                    Icon(
                                      elencoSensori[index].icon2,
                                      color: elencoSensori[index].iconColor2,
                                      size: 60,
                                    ),
                                    Text(
                                      e.titolo2.toString(),
                                      style: TextStyle(
                                        color: e.iconColor2,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                            ]
                          ]),
                        );
                      }
                      return Container();
                    }).toList(),
                  ]
              );
            },
          ),
        ),
      ),
    );
  }
}


class League {
  String TvTitle, tvSubTitle;
  // List<Club> listClubs;
  League(this.TvTitle, this.tvSubTitle);
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
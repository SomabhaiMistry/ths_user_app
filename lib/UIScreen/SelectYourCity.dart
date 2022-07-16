import 'package:flutter/material.dart';
import 'package:ths_user_app/CommonLayout/ToolbarWithTitle.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

class SelectYourCity extends StatefulWidget {
  const SelectYourCity({Key? key}) : super(key: key);

  @override
  State<SelectYourCity> createState() => _SelectYourCityState();
}

class _SelectYourCityState extends State<SelectYourCity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          backgroundColor: bg_gray_f0f0f4,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ToolbarWithTitle("Select your City"),


            ],
          ),
        ),
      ),
    );
  }
}

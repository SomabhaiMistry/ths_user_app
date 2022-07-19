import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ths_user_app/Styles/my_colors.dart';

class Indicator extends StatelessWidget {
  Indicator({
    required this.controller,
    this.itemCount: 0,
  }) : assert(controller != null);

  /// PageView Controller
  final PageController controller;

  /// Number of indicators
  final int itemCount;

  /// Ordinary colours
  final Color normalColor = Color(0x50199a8e);

  /// Selected color
  final Color selectedColor = bg_btn_199a8e;

  /// Size of points
  final double size = 4.0;

  /// Spacing of points
  final double spacing = 4.0;

  /// Point Widget
  Widget _buildIndicator(
      int index, int pageCount, double dotSize, double spacing) {
    // Is the current page selected?
    bool isCurrentPageSelected = index ==
        (controller.page != null ? controller.page!.round() % pageCount : 0);

    return new Container(
      height: size,
      width: size + (3 * spacing),
      child: new Center(
        child: new Material(
          color: isCurrentPageSelected ? selectedColor : normalColor,
          type: MaterialType.canvas,
          child: new Container(
            width: 12,
            height: dotSize,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, (int index) {
        return _buildIndicator(index, itemCount, size, spacing);
      }),
    );
  }
}

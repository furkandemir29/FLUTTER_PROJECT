import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();

  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static double calculatePokeImageAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2;
    } else {
      return 0.3;
    }
  }

  static final Map<int, Color> _typeColorMap = {
    1: Colors.red,
    2: Colors.green,
    3: Colors.blue,
    4: Colors.pink,
    5: Colors.yellow,
    6: Colors.purple,
  };

  static Color getColorFromType(int type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }
}

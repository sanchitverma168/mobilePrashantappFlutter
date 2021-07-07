import 'package:flutter/material.dart';

class AppSizes {
  BuildContext? ct;
  double? height, width;
  Size? size;
  AppSizes(BuildContext context) {
    ct = context;
    size = MediaQuery.of(context).size;
    height = size!.height;
    width = size!.width;
  }
  List<double> t = new List.empty(growable: true);

  /// Login Screen Page [ Returns "Login Screen Heading Container height"]
  List<double> loginScreenHeading() {
    t.clear();
    t.insert(0, height! * 0.4);
    return t;
  }

  /// Login Screen Page [ Returns "Login Screen Animated Widget height"]
  double loginScreenanimatedwidget() {
    return -height! / 3.7;
  }

  /// SideBar [ Returns "Header height"]
  double dsh() {
    return height! * 0.3;
  }

  /// Account Page [ Return Card Height]
  double apch() {
    return height! * 0.10;
  }

  /// Dashboard Page [ Return Bottom Navigation Bar Height]
  double bnbh() {
    return height! * 0.07;
  }

  /// Dashboard Page [ Return Top Padding ]
  double tp() {
    return height! * 0.01;
  }
}

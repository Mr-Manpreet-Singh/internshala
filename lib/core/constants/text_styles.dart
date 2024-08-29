import 'package:flutter/material.dart';

import 'colors.dart';

abstract class MyTextStyles {
  static const TextStyle title = TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: myBlackLightColor);
  static const TextStyle subTitleGrey = TextStyle(fontSize: 14, color: myGreyColor);
  static const TextStyle subTitleBlack = TextStyle(fontSize: 14, color: myBlackLightColor);
  static const TextStyle small = TextStyle(fontSize: 12, color: myBlackLightColor);
}

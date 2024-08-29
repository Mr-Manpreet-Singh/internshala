import 'package:flutter/material.dart';

import 'package:internshala/core/constants/colors.dart';

abstract class Palette {}

ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: myWhiteColor,
    appBarTheme: const AppBarTheme(
      color: myWhiteColor,
      elevation: 0,
    ),
    useMaterial3: true);

import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class MyTextIconButton extends StatelessWidget {
  const MyTextIconButton({
    super.key,
    required this.onPress,
    required this.title,
  });
  final void Function() onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPress,
      label: Text(title),
      icon: const Icon(Icons.add, size: 18),
      style: TextButton.styleFrom(
          backgroundColor: myWhiteColor,
          foregroundColor: myBlueColor,
          minimumSize: const Size(double.infinity, 50),
          textStyle: MyTextStyles.subTitleGrey,
          padding: const EdgeInsets.only(left: 0),
          alignment: Alignment.centerLeft),
    );
  }
}

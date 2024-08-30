import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class Lables extends StatelessWidget {
  const Lables({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
            decoration: BoxDecoration(color: myLightGreyColor, borderRadius: BorderRadius.circular(6)),
            child: const Text("Internship With Internship Offer", style: MyTextStyles.small)),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
            decoration: BoxDecoration(color: myLightGreyColor, borderRadius: BorderRadius.circular(6)),
            child: const Text("Internship ", style: MyTextStyles.small)),
      ],
    );
  }
}

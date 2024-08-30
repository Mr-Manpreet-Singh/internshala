import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({
    super.key,
    required this.title,
    required this.updateFilter,
    required this.isChecked,
  });
  final String title;
  final bool isChecked;
  final void Function() updateFilter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            updateFilter();
          },
        ),
        const SizedBox(width: 6),
        Text(title),
      ],
    );
  }
}

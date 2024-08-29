import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedDurationProvider = StateProvider<String?>((ref) => null);

const List<PopupMenuEntry<String>> durationItems = [
  PopupMenuItem(value: "1", child: Text("1 Month")),
  PopupMenuItem(value: "2", child: Text("2 Month")),
  PopupMenuItem(value: "3", child: Text("3 Months")),
  PopupMenuItem(value: "4", child: Text("4 Months")),
  PopupMenuItem(value: "6", child: Text("6 Months")),
  PopupMenuItem(value: "12", child: Text("12 Months")),
];

abstract class FiltersRepo {
  static void showDropdown(textFieldKey, ref, context) async {
    final RenderBox renderBox = textFieldKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    final result = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
          offset.dx, offset.dy + renderBox.size.height, offset.dx + renderBox.size.width, offset.dy),
      items: durationItems,
      constraints: BoxConstraints.tightFor(width: renderBox.size.width),
    );

    if (result != null) {
      ref.read(selectedDurationProvider.notifier).state = result;
      print("Fiters State :${ref.read(selectedDurationProvider)} ");
      FocusScope.of(context).unfocus();
    }
  }
}

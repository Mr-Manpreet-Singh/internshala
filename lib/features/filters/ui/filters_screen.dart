import 'package:flutter/material.dart';
import 'package:internshala/core/constants/colors.dart';
import 'package:internshala/core/constants/text_styles.dart';
import 'package:internshala/features/filters/ui/widgets/duration_drop_down.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
        actions: const [
          Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.bookmark_border_outlined)),
          Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.notifications_none_outlined)),
          Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.chat_bubble_outline_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("PROFILE", style: MyTextStyles.subTitleGrey),
            TextButton.icon(
              onPressed: () {},
              label: const Text("Add Profile"),
              icon: const Icon(Icons.add, size: 18),
              style: TextButton.styleFrom(
                  backgroundColor: myWhiteColor,
                  foregroundColor: myBlueColor,
                  minimumSize: const Size(double.infinity, 50),
                  textStyle: MyTextStyles.subTitleGrey,
                  padding: const EdgeInsets.only(left: 0),
                  alignment: Alignment.centerLeft),
            ),
            const Text("CITY", style: MyTextStyles.subTitleGrey),
            TextButton.icon(
              onPressed: () {},
              label: const Text("Add City"),
              icon: const Icon(Icons.add, size: 18),
              style: TextButton.styleFrom(
                  foregroundColor: myBlueColor,
                  minimumSize: const Size(double.infinity, 50),
                  textStyle: MyTextStyles.subTitleGrey,
                  padding: const EdgeInsets.only(left: 0),
                  alignment: Alignment.centerLeft),
            ),
            const Text("MAXIMUM DURATION (IN MONTHS)", style: MyTextStyles.subTitleGrey),
            const SizedBox(height: 12),
            const DurationDropDown()
            // DropdownTextField()
          ],
        ),
      ),
    ));
  }
}

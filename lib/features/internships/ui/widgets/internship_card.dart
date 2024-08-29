import 'package:flutter/material.dart';
import 'package:internshala/models/internship_model.dart';

import 'package:internshala/core/constants/colors.dart';

import '../../../../core/constants/text_styles.dart';

class InternshipCard extends StatelessWidget {
  const InternshipCard({super.key, required this.internship});

  final Job internship;

  @override
  Widget build(BuildContext context) {
    String city = internship.locationNames.toString();
    city = city.substring(1, city.length - 1);
    final location = internship.workFromHome ? "Work From Home" : city;
    final title = internship.title;
    final companyName = internship.companyName;
    final start = internship.startDate;
    final duration = internship.duration;
    final salary = internship.stipend.salary;
    final lable = internship.labelsApp;
    final postedByLabel = internship.postedByLabel;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: myGreyColor)),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.trending_up_sharp, color: myBlueColor, size: 16),
                SizedBox(width: 4),
                Text("Actively hiring", style: MyTextStyles.small)
              ],
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: MyTextStyles.title),
                    const SizedBox(height: 14),
                    Text(companyName, style: MyTextStyles.subTitleGrey),
                  ],
                ),
              ),
              // LOGO
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Container(color: myGreyColor, width: 48, height: 48, child: const Center(child: Text("LOGO"))),
              )
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              // TODO icon depend on WHF or OFFICE
              const Icon(Icons.home_filled, size: 16, color: Color.fromARGB(158, 0, 0, 0)),
              const SizedBox(width: 4),
              Text(location, style: MyTextStyles.subTitleBlack)
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              // TODO icon depend on WHF or OFFICE
              const Icon(Icons.play_circle_outline_sharp, size: 16, color: Color.fromARGB(158, 0, 0, 0)),
              const SizedBox(width: 4),
              Text(start, style: MyTextStyles.subTitleBlack),
              const SizedBox(width: 14),
              const Icon(Icons.calendar_today_outlined, size: 16, color: Color.fromARGB(158, 0, 0, 0)),
              const SizedBox(width: 4),
              Text(duration, style: MyTextStyles.subTitleBlack)
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              const Icon(Icons.payments_outlined, size: 16, color: Color.fromARGB(158, 0, 0, 0)),
              const SizedBox(width: 4),
              Text(salary, style: MyTextStyles.subTitleBlack),
            ],
          ),
          const SizedBox(height: 14),
          // const Lables(),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
              decoration: BoxDecoration(color: myLightGreyColor, borderRadius: BorderRadius.circular(6)),
              child: Text(lable, style: MyTextStyles.small)),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
            decoration: BoxDecoration(color: myLightGreyColor, borderRadius: BorderRadius.circular(6)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.update, size: 16, color: Color.fromARGB(158, 0, 0, 0)),
                const SizedBox(width: 4),
                Text(postedByLabel, style: MyTextStyles.small),
              ],
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text("View Details", style: MyTextStyles.subTitleBlack.copyWith(color: myBlueColor)),
                onPressed: () {},
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: myBlueColor,
                    foregroundColor: myWhiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    minimumSize: const Size(150, 40),
                    textStyle: MyTextStyles.subTitleBlack.copyWith(fontWeight: FontWeight.w500)),
                child: const Text("Apply Now"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

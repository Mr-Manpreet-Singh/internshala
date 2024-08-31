import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/core/constants/text_styles.dart';

import 'package:internshala/core/constants/colors.dart';
import 'package:internshala/features/filters/ui/filters_screen.dart';
import 'package:internshala/features/internships/repository/filter_repo.dart';

import '../../../models/internship_model.dart';
import '../repository/fetch_internships.dart';
import 'widgets/internship_card.dart';

class InternshipsScreen extends StatelessWidget {
  const InternshipsScreen({
    super.key,
  });

  // Widget noInternet = Center(
  //   child: ElevatedButton(
  //     child: Text("ReLoad"),
  //     onPressed: () {
  //       Ref ref;
  //       ref.watch(internshipListProvider);
  //     },
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(border: Border.all(color: myBlueColor), borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FiltersScreen(),
              )),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.filter_alt_outlined, size: 18, color: myBlueColor),
                  Text(
                    "Filters",
                    style: MyTextStyles.subTitleBlack.copyWith(color: myBlueColor),
                  ),
                ],
              ),
            ),
            // Text("$ total internships")
          ],
        ),
      ),
      const Divider(thickness: 2, color: myLightGreyColor),
      Expanded(
        child: Consumer(builder: (context, ref, child) {
          final internshipListAsyncValue = ref.watch(internshipListProvider);

          return internshipListAsyncValue.when(data: (internshipList) {
            List<Internship> filteredList = internshipList;
            filteredList = FilterInternships.applyfilter(ref, filteredList);
            if (filteredList.isEmpty) {
              return const Center(
                child: Text("No Internships Available as per current Filters"),
              );
            }

            return ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                final Internship internship = filteredList[index];
                return Column(
                  children: [
                    InternshipCard(
                      internship: internship,
                    ),
                    const Divider(thickness: 10, color: myLightGreyColor),
                  ],
                );
              },
            );
          }, loading: () {
            return const Center(child: CircularProgressIndicator());
          }, error: (error, stackTrace) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$error"),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      ref.refresh(internshipListProvider);
                    } // try reload
                    ,
                    child: const Text("Try Reload"))
              ],
            );
          });
        }),
      ),
    ]);
  }
}

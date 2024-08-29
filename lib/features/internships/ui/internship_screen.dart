import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/core/constants/text_styles.dart';

import 'package:internshala/core/constants/colors.dart';
import 'package:internshala/features/filters/repository/filters_repo.dart';
import 'package:internshala/features/filters/ui/filters_screen.dart';

import '../../../models/internship_model.dart';
import '../repository/fetch_jobs.dart';
import 'widgets/internship_card.dart';

class InternshipsScreen extends StatelessWidget {
  const InternshipsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(border: Border.all(color: myBlueColor), borderRadius: BorderRadius.circular(30)),
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FiltersScreen(),)),
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
      ),
      const Divider(thickness: 2, color: myLightGreyColor),
      Expanded(
        child: Consumer(builder: (context, ref, child) {
          final jobListAsyncValue = ref.watch(jobListProvider);
              // Filter jobs based on duration
          final maxDuration = ref.read(selectedDurationProvider);
          if(maxDuration != null){

          }

          return jobListAsyncValue.when(
            data: (jobList) { 
                  // Filter jobs based on duration
          // final maxDuration = ref.watch(selectedDurationProvider);
          // if(maxDuration != null){
          //   for(Job job in jobList){
          //     if (int.tryParse(job.duration.trim().substring(0,1))!  > int.parse(maxDuration) ){
          //         jobList.removeWhere((element) => element.id == job.id);
          //     }
          //   }
          // }
              return ListView.builder(
              
              itemCount: jobList.length,
              itemBuilder: (context, index) {
                final Job job = jobList[index];
                return Column(
                  children: [
                    InternshipCard(
                      internship: job,
                    ),
                    const Divider(thickness: 10, color: myLightGreyColor),
                  ],
                );
              },
            );},
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text("Error: $error")),
          );
        }),
      ),
    ]);
  }
}

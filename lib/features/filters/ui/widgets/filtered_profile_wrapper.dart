
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/colors.dart';
import '../../../../providers/profile_providers.dart';

class FilteredProfiles extends StatelessWidget {
  const FilteredProfiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final profiles = ref.watch(profilesProvider);
      final List<String> filteredProfiles = [];
      for (var profile in profiles.entries) {
        if (profile.value) {
          filteredProfiles.add(profile.key);
        }
      }
    
      return Wrap(
        runSpacing: 2,
        spacing: 4,
        children: [
          ...filteredProfiles.map(
            (profile) {
              return ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: myBlueColor,
                    foregroundColor: myWhiteColor,
                    // textStyle: MyTextStyles.small,
                  ),
                  iconAlignment: IconAlignment.end,
                  icon: const Icon(Icons.close),
                  onPressed: () => ref.read(profilesProvider.notifier).toggleProfile(profile),
                  label: Text(profile));
            },
          )
        ],
      );
    });
  }
}

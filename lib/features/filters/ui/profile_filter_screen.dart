import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/providers/profile_providers.dart';

import 'widgets/my_checkbox.dart';

class ProfileFilter extends ConsumerWidget {
  const ProfileFilter({super.key});

  void toggleProfileFilters(WidgetRef ref, String value) {
    ref.read(profilesProvider.notifier).toggleProfile(value);
    
  }
  void resetProfileFilters(WidgetRef ref) {
    ref.read(profilesProvider.notifier).resetAllProfiles();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profiles = ref.watch(profilesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Filters"),
        actions: [
          TextButton(onPressed: ()=>resetProfileFilters(ref), child: const Text("Clear all")),
          
        ],
      ),
      body: ListView.builder(
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                MyCheckBox(
                  title: profiles.keys.toList()[index],
                  isChecked: profiles.values.toList()[index],
                  updateFilter: () => toggleProfileFilters(ref, profiles.keys.toList()[index]),
                )
              ],
            );
          }),
    );
  }
}

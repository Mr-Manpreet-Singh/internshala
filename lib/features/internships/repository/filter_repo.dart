 import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/internship_model.dart';
import '../../../providers/locations_provider.dart';
import '../../../providers/profile_providers.dart';
import '../../filters/repository/filters_repo.dart';

abstract class FilterInternships{
  static   List<Internship> applyfilter(WidgetRef ref, filteredList) {
    // Filter internships
    final maxDuration = ref.watch(selectedDurationProvider);
    final profiles = ref.watch(profilesProvider);
    final cities = ref.watch(cityProvider);

    // Filter internships based on duration
    if (maxDuration != null) {
      filteredList = filteredList
          .where((element) => int.tryParse(element.duration.trim().substring(0, 1))! <= int.parse(maxDuration))
          .toList();
    }
    // Filter internships based on profile

    if (profiles.values.any((element) => element == true)) {
      filteredList = filteredList.where((element) {
        return profiles.entries.any((entry) => entry.key == element.profileName && entry.value == true);
      }).toList();
    }

    // Filter internships based on city
    if (cities.values.any((element) => element == true)) {
      filteredList = filteredList.where((element) {
        return cities.entries.any((entry) => element.locationNames.contains(entry.key) && entry.value == true);
      }).toList();
    }
    return filteredList;
  }
}
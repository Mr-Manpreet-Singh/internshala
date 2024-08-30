// Provider for extracting distinct locations
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/models/internship_model.dart';

import '../features/internships/repository/fetch_internships.dart';


// Provider for the CityNotifier
final cityProvider = StateNotifierProvider<CityNotifier, Map<String, bool>>((ref) {
  final List<Internship> internshipList = ref.watch(internshipListProvider).maybeWhen(
        data: (internships) => internships,
        orElse: () => [],
      );

  final cityList = internshipList
      .expand((internship) => internship.locationNames) // Flatten the list of location arrays
      .toSet()
      .toList();

  return CityNotifier(cityList);
});

class CityNotifier extends StateNotifier<Map<String, bool>> {
  CityNotifier(List<String> city) : super({for (var e in city) e: false});

  // Function to toggle the boolean value of a profile
  void toggleCity(String profile) {
    state = {
      for (var entry in state.entries) entry.key: entry.key == profile ? !entry.value : entry.value,
    };
  }

  // Function to reset all boolean values to false
  void resetAllCitys() {
    state = {
      for (var entry in state.entries) entry.key: false,
    };
    
  }
}




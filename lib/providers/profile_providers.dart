// Provider for extracting distinct profiles
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/models/internship_model.dart';

import '../features/internships/repository/fetch_internships.dart';

// Provider for the ProfilesNotifier
final profilesProvider = StateNotifierProvider<ProfilesNotifier, Map<String, bool>>((ref) {
  final List<Internship> internshipList = ref.read(internshipListProvider).maybeWhen(
        data: (internships) => internships,
        orElse: () => [],
      );
  final profilesList = internshipList.map((internship) => internship.profileName).toSet().toList();

  return ProfilesNotifier(profilesList);
});

class ProfilesNotifier extends StateNotifier<Map<String, bool>> {
  ProfilesNotifier(List<String> profiles) : super({for (var e in profiles) e: false});

  // Function to toggle the boolean value of a profile
  void toggleProfile(String profile) {
    state = {
      for (var entry in state.entries) entry.key: entry.key == profile ? !entry.value : entry.value,
    };
    // print(state);
  }

  // Function to reset all boolean values to false
  void resetAllProfiles() {
    state = {
      for (var entry in state.entries) entry.key: false,
    };
    
  }
}


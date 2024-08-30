import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dart:convert';

import '../../../models/internship_model.dart';

final fetchInternshipsProvider = Provider<FetchInternships>((ref) {
  return FetchInternships();
});

final internshipListProvider = FutureProvider<List<Internship>>((ref) async {
  final internshipService = ref.watch(fetchInternshipsProvider);
  try {
    return await internshipService.fetchInternships();
  } catch (e) {
    throw Exception("Failed to load internships: ${e.toString()}");
  }
});

class FetchInternships {
  final Uri url = Uri.parse("https://internshala.com/flutter_hiring/search");

  Future<List<Internship>> fetchInternships() async {
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> internshipMap = jsonDecode(response.body);
        internshipMap = internshipMap.values.first;

        return Internship.fromJsonList(internshipMap.values.toList());
      } else {
        throw Exception("Failed to load internships");
      }
    } on Exception catch (e) {
      throw Exception("Failed :$e");
    }
  }
}

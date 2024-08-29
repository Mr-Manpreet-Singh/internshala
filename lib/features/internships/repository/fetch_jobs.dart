import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dart:convert';

import '../../../models/internship_model.dart';

final fetchJobsProvider = Provider<FetchJobs>((ref) {
  return FetchJobs();
});

final jobListProvider = FutureProvider<List<Job>>((ref) async {
  final jobService = ref.watch(fetchJobsProvider);
  try {
    return await jobService.fetchJobs();
  } catch (e) {
    throw Exception("Failed to load jobs: ${e.toString()}");
  }
});

class FetchJobs {
  final Uri url = Uri.parse("https://internshala.com/flutter_hiring/search");

  Future<List<Job>> fetchJobs() async {
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> jobMap = jsonDecode(response.body);
        jobMap = jobMap.values.first;

        return Job.fromJsonList(jobMap.values.toList());
      } else {
        throw Exception("Failed to load jobs");
      }
    } on Exception catch (e) {
      throw Exception("Failed :$e");
    }
  }
}

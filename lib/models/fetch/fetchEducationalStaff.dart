import 'package:acc/models/results/educationStaff.dart';

class FetchEducationalStaff {
  bool success;
  List<EducationalStaff> results;
  int count;

  FetchEducationalStaff(
      {this.success = false, this.results = const [], this.count = 0});

  factory FetchEducationalStaff.formJson(Map<String, dynamic> json) {
    return FetchEducationalStaff(
        success: json['success'],
        results: json['results'],
        count: json['count']);
  }
}

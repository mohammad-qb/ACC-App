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
        results: parseEducationalStaff(json),
        count: json['count']);
  }

  static List<EducationalStaff> parseEducationalStaff(json) {
    var list = json['results'] as List;
    List<EducationalStaff> educationalStaff =
        list.map((e) => EducationalStaff.formJson(e)).toList();
    return educationalStaff;
  }
}

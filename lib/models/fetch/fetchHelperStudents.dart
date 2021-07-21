import 'package:acc/models/results/helperStudents.dart';

class FetchHelperStudents {
  bool success;
  List<HelperStudents> results;
  int count;

  FetchHelperStudents(
      {this.success = false, this.results = const [], this.count = 0});

  factory FetchHelperStudents.formJson(Map<String, dynamic> json) {
    return FetchHelperStudents(
        success: json['success'],
        results: parseHelperStudents(json),
        count: json['count']);
  }

  static List<HelperStudents> parseHelperStudents(json) {
    var list = json['results'] as List;
    List<HelperStudents> helperStudents =
        list.map((e) => HelperStudents.formJson(e)).toList();
    return helperStudents;
  }
}

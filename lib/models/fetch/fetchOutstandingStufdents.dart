import 'package:acc/models/results/outstandingStudents.dart';

class FetchOutstandingStudents {
  bool success;
  List<OutstandingStudents> results;
  int count;

  FetchOutstandingStudents(
      {this.success = false, this.results = const [], this.count = 0});

  factory FetchOutstandingStudents.formJson(Map<String, dynamic> json) {
    return FetchOutstandingStudents(
        success: json['success'],
        results: parseOutstandingStudents(json),
        count: json['count']);
  }

  static List<OutstandingStudents> parseOutstandingStudents(json) {
    var list = json['results'] as List;
    List<OutstandingStudents> outstandingStudents =
        list.map((e) => OutstandingStudents.formJson(e)).toList();
    return outstandingStudents;
  }
}

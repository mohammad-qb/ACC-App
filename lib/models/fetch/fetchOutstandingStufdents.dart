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
        results: json['results'],
        count: json['count']);
  }
}

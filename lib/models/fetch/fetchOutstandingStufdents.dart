import 'package:acc/models/results/outstandingStudents.dart';

class Fetch {
  bool success;
  List<OutstandingStudents> results;
  int count;

  Fetch({this.success = false, this.results = const [], this.count = 0});

  factory Fetch.formJson(Map<String, dynamic> json) {
    return Fetch(
        success: json['success'],
        results: json['results'],
        count: json['count']);
  }
}

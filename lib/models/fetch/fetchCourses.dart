import 'package:acc/models/results/courses.dart';

class FetchCourses {
  bool success;
  List<Courses> results;
  int count;

  FetchCourses({this.success = false, this.results = const [], this.count = 0});

  factory FetchCourses.formJson(Map<String, dynamic> json) {
    return FetchCourses(
        success: json['success'],
        results: parseCourses(json),
        count: json['count']);
  }

  static List<Courses> parseCourses(json) {
    var list = json['results'] as List;
    List<Courses> courses = list.map((e) => Courses.formJson(e)).toList();
    return courses;
  }
}

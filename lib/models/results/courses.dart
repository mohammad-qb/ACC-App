import 'package:acc/models/video.dart';

class Courses {
  int id;
  String name, type, setup, exams, summaries, course;
  List<Video> videos;

  Courses(
      {this.id = 0,
      this.name = '',
      this.type = '',
      this.setup = '',
      this.exams = '',
      this.summaries = '',
      this.course = '',
      this.videos = const []});

  factory Courses.formJson(Map<String, dynamic> json) {
    return Courses(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      exams: json['exams'],
      summaries: json['summaries'],
      course: json['course'],
      videos: parseVideos(json),
      setup: json['setup'],
    );
  }

  static List<Video> parseVideos(json) {
    var list = json['videos'] as List;
    List<Video> videos = list.map((e) => Video.formJson(e)).toList();
    return videos;
  }
}

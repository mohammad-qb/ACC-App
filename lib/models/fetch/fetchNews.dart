import 'package:acc/models/results/news.dart';

class FetchNews {
  bool success;
  List<News> results;
  int count;

  FetchNews({this.success = false, this.results = const [], this.count = 0});

  factory FetchNews.formJson(Map<String, dynamic> json) {
    return FetchNews(
        success: json['success'],
        results: json['results'],
        count: json['count']);
  }
}

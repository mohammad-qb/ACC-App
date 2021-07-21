import 'package:acc/models/results/news.dart';

class FetchNews {
  bool success;
  List<News> results;
  int count;

  FetchNews({this.success = false, this.results = const [], this.count = 0});

  factory FetchNews.formJson(Map<String, dynamic> json) {
    return FetchNews(
        success: json['success'],
        results: parseNews(json),
        count: json['count']);
  }

  static List<News> parseNews(json) {
    var list = json['results'] as List;
    List<News> news = list.map((e) => News.formJson(e)).toList();
    return news;
  }
}

import 'package:acc/models/results/clubMembers.dart';

class FetchClubMembers {
  bool success;
  List<ClubMembers> results;
  int count;

  FetchClubMembers(
      {this.success = false, this.results = const [], this.count = 0});

  factory FetchClubMembers.formJson(Map<String, dynamic> json) {
    return FetchClubMembers(
        success: json['success'],
        results: parseClubMembers(json),
        count: json['count']);
  }

  static List<ClubMembers> parseClubMembers(json) {
    var list = json['results'] as List;
    List<ClubMembers> clubMembers =
        list.map((e) => ClubMembers.formJson(e)).toList();
    return clubMembers;
  }
}

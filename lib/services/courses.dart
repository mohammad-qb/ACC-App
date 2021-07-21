import 'dart:convert';

import 'package:acc/config/config.dart';
import 'package:acc/models/fetch/fetchCourses.dart';
import 'package:acc/models/results/error.dart';
import 'package:http/http.dart' as http;

class CoursesServices {
  static Future<dynamic> fetchCourses() async {
    String url = "$BASE_URL/courses/get";

    final response = await http.get(Uri.parse(url), headers: <String, String>{
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return FetchCourses.formJson(jsonDecode(response.body));
    } else if (response.statusCode == 401 ||
        response.statusCode == 500 ||
        response.statusCode == 400) {
      return Error.formJson(jsonDecode(response.body));
    } else {
      return Exception('حدث خطأ في العملية : ${response.toString()}');
    }
  }
}

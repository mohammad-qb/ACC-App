import 'dart:async';

import 'package:acc/controllers/clubMembers.dart';
import 'package:acc/controllers/clubMembers.dart';
import 'package:acc/controllers/courses.dart';
import 'package:acc/controllers/educationalStaff.dart';
import 'package:acc/controllers/helperStudents.dart';
import 'package:acc/controllers/news.dart';
import 'package:acc/controllers/outstandingStudents.dart';
import 'package:acc/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  NewsController newsController = Get.put(NewsController());
  ClubMembersController clubMembersController =
      Get.put(ClubMembersController());
  CoursesController coursesController = Get.put(CoursesController());
  EducationalStaffController educationalStaffController =
      Get.put(EducationalStaffController());
  OutstandingStudentsController outstandingStudentsController =
      Get.put(OutstandingStudentsController());
  HelperStudentsController helperStudentsController =
      Get.put(HelperStudentsController());
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.off(Layout()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/accLogo.png",
          width: 150,
          height: 300,
        ),
      ),
    );
  }
}

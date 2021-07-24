import 'dart:math';

import 'package:acc/constants/colors.dart';
import 'package:acc/models/results/courses.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/courses_dialog.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Courses course;
  const CourseCard({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = new Random();
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (BuildContext context) => CoursesDialog(course: course)),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage('assets/images/course_bg.jfif') as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    coursesCardColorsList[
                        random.nextInt(coursesCardColorsList.length)],
                    coursesCardColorsList[
                        random.nextInt(coursesCardColorsList.length)]
                  ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: CustomeText(
                text: course.name,
                color: blackColor,
                fontSize: 20,
              ),
            )), /* add child content here */
      ),
    );
  }
}

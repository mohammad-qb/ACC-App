import 'package:acc/constants/colors.dart';
import 'package:acc/controllers/courses.dart';
import 'package:acc/models/results/courses.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/course_card.dart';
import 'package:acc/widgets/grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesRequiredTab extends StatelessWidget {
  const CoursesRequiredTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: GetBuilder<CoursesController>(
        init: CoursesController(),
        builder: (course) => ListView(shrinkWrap: false, children: [
          Container(
            child: course.requiredCourses.length > 0
                ? CustomeGridView(
                    list: course.requiredCourses,
                    dataType: 'courses',
                    count: 2,
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Image.asset(
                          "assets/images/FIND.jfif",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomeText(
                          text: 'نأسف لا يوجد مواد للان!!!',
                          color: greyColor,
                        )
                      ]),
          )
        ]),
      ),
    );
  }
}

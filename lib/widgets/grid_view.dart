import 'package:acc/models/results/clubMembers.dart';
import 'package:acc/models/results/courses.dart';
import 'package:acc/models/results/educationStaff.dart';
import 'package:acc/models/results/helperStudents.dart';
import 'package:acc/models/results/outstandingStudents.dart';
import 'package:acc/widgets/club_member_card.dart';
import 'package:acc/widgets/course_card.dart';
import 'package:acc/widgets/educational_satff_card.dart';
import 'package:acc/widgets/helper_students_card.dart';
import 'package:acc/widgets/outstanding_students_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomeGridView extends StatelessWidget {
  final List list;
  final String dataType;
  final int count;
  const CustomeGridView(
      {Key? key, required this.list, required this.dataType, this.count = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: count,
        itemCount: list.length,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemBuilder: (BuildContext context, int index) {
          if (dataType == 'club') {
            return ClubMemberCard(clubMember: list[index] as ClubMembers);
          } else if (dataType == 'courses') {
            return CourseCard(course: list[index] as Courses);
          } else if (dataType == 'educationalStaff') {
            return EducationalStaffCard(
                educationalStaff: list[index] as EducationalStaff);
          } else if (dataType == 'outstandingStudents') {
            return OutstandingStudentsCard(
                students: list[index] as OutstandingStudents);
          } else if (dataType == 'helperStudents') {
            return HelperStudentsCard(students: list[index] as HelperStudents);
          } else {
            return Container();
          }
        },
        staggeredTileBuilder: (index) => StaggeredTile.fit(1));
  }
}

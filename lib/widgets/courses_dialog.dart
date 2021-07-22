import 'package:acc/config/config.dart';
import 'package:acc/constants/colors.dart';
import 'package:acc/helper/open_url.dart';
import 'package:acc/models/results/courses.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/tag.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CoursesDialog extends StatelessWidget {
  final Courses course;
  const CoursesDialog({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: AlertDialog(
          title: CustomeText(
            text: course.name,
            fontSize: 20,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                      visible: course.setup.isNotEmpty,
                      child: Tag(
                          icon: FaIcon(
                            FontAwesomeIcons.download,
                            color: greyColor,
                          ),
                          text: 'setup',
                          url: course.setup)),
                  Visibility(
                      visible: course.exams.isNotEmpty,
                      child: Tag(
                          icon: FaIcon(
                            FontAwesomeIcons.question,
                            color: greyColor,
                          ),
                          text: 'الامتحانات',
                          url: course.exams)),
                  Visibility(
                      visible: course.summaries.isNotEmpty,
                      child: Tag(
                          icon: FaIcon(
                            FontAwesomeIcons.receipt,
                            color: greyColor,
                          ),
                          text: 'التلاخيص',
                          url: course.summaries)),
                  Visibility(
                      visible: course.course.isNotEmpty,
                      child: Tag(
                          icon: FaIcon(
                            FontAwesomeIcons.bookOpen,
                            color: greyColor,
                          ),
                          text: 'المادة',
                          url: course.course)),
                ],
              ),
              Row(
                  children: course.videos.length > 0
                      ? course.videos
                          .map(
                            (e) => Visibility(
                                visible: true,
                                child: Tag(
                                    icon: FaIcon(
                                      FontAwesomeIcons.video,
                                      color: greyColor,
                                    ),
                                    text: 'فيديو شرح',
                                    url: e.url)),
                          )
                          .toList()
                      : [])
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: CustomeText(
                text: 'اغلاق',
                fontSize: 13,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

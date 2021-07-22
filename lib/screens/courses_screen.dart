import 'package:acc/constants/colors.dart';
import 'package:acc/screens/tabs/courses_optional.dart';
import 'package:acc/screens/tabs/courses_required.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(indicatorColor: primaryColor, tabs: [
                Tab(child: CustomeText(text: 'اجباري تخصص')),
                Tab(child: CustomeText(text: 'اختياري تخصص')),
              ]),
            ],
          )),
        ),
        body: TabBarView(
          children: [CoursesRequiredTab(), CoursesOptionalTab()],
        ),
      ),
    );
  }
}

import 'package:acc/constants/colors.dart';
import 'package:acc/controllers/educationalStaff.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EducationalStaffScreen extends StatelessWidget {
  const EducationalStaffScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomeText(
                text: 'الكادر التعليمي',
                fontSize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              GetX<EducationalStaffController>(
                  init: EducationalStaffController(),
                  builder: (edu) => edu.loading.value
                      ? Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(primaryColor),
                          ),
                        )
                      : CustomeGridView(
                          list: edu.fetchSuccess.value.results,
                          dataType: 'educationalStaff'))
            ],
          ),
        ),
      ),
    );
  }
}

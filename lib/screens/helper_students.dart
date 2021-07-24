import 'package:acc/constants/colors.dart';
import 'package:acc/controllers/helperStudents.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperStudentsScreen extends StatelessWidget {
  const HelperStudentsScreen({Key? key}) : super(key: key);

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
                text: 'الطلاب المساعدين للنادي',
                fontSize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              GetX<HelperStudentsController>(
                  init: HelperStudentsController(),
                  builder: (helper) => helper.loading.value
                      ? Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(primaryColor),
                          ),
                        )
                      : CustomeGridView(
                          list: helper.fetchSuccess.value.results,
                          dataType: 'helperStudents'))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:acc/constants/colors.dart';
import 'package:acc/controllers/outstandingStudents.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutstandingStudentsScreen extends StatelessWidget {
  const OutstandingStudentsScreen({Key? key}) : super(key: key);

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
                text: 'الطلاب المتفوقين',
                fontSize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              GetX<OutstandingStudentsController>(
                  init: OutstandingStudentsController(),
                  builder: (outstanding) => outstanding.loading.value
                      ? Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(primaryColor),
                          ),
                        )
                      : CustomeGridView(
                          list: outstanding.fetchSuccess.value.results,
                          dataType: 'outstandingStudents'))
            ],
          ),
        ),
      ),
    );
  }
}

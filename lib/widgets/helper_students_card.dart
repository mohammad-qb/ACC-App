import 'package:acc/config/config.dart';
import 'package:acc/constants/colors.dart';
import 'package:acc/models/results/helperStudents.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelperStudentsCard extends StatelessWidget {
  final HelperStudents students;
  const HelperStudentsCard({Key? key, required this.students})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: students.image != 'No image'
                      ? NetworkImage(IMAGE_URL + students.image.trim())
                      : AssetImage('assets/images/accLogo.png')
                          as ImageProvider,
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          CustomeText(text: students.firstName + " " + students.lastName),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                FaIcon(
                  FontAwesomeIcons.commentAlt,
                  size: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                CustomeText(
                  text: students.firstName + " " + students.lastName,
                  fontSize: 12,
                  color: greyColor,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

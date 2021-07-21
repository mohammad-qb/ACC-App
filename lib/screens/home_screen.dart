import 'package:acc/constants/colors.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: ListView(shrinkWrap: false, children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomeText(
                  text: 'اخر الاخبار',
                  fontSize: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: CustomeText(
                    text: 'المزيد',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}

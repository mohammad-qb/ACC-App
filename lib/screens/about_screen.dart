import 'package:acc/widgets/CustomeText.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListView(
        shrinkWrap: false,
        children: [
          Image.asset(
            'assets/images/accLogo.png',
            width: 150,
            height: 200,
          ),
          SizedBox(
            height: 10,
          ),
          CustomeText(
            text:
                'نحن مجموعة طلاب من تخصص الحوسبة التطبيقية انشأنا هذا النادي لنلبي احتياجات طلاب التخصص من خلال مساعدتهم في موادهم و عمل رحلات علمية ترفيهية في نفس الوقت فيما يفيد الطلاب في تخصصهم و من خلال هذا الموقع سيصبح من السهل علينا فعل ذلك بكل سهولة و سير.',
            fontSize: 25,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    ));
  }
}

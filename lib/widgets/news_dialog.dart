import 'package:acc/config/config.dart';
import 'package:acc/constants/colors.dart';
import 'package:acc/models/results/news.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsDialog extends StatelessWidget {
  final News news;
  const NewsDialog({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: AlertDialog(
          title: CustomeText(
            text: news.title,
            fontSize: 20,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(IMAGE_URL + news.image.trim()),
              SizedBox(
                height: 10,
              ),
              CustomeText(
                text: news.description,
                fontWeight: FontWeight.w400,
              )
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

import 'package:acc/config/config.dart';
import 'package:acc/models/results/news.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/news_dialog.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date = DateTime.parse(news.dateTime).day.toString() +
        '/' +
        DateTime.parse(news.dateTime).month.toString() +
        '/' +
        DateTime.parse(news.dateTime).year.toString();
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (BuildContext context) => NewsDialog(news: news)),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: true
                ? NetworkImage(IMAGE_URL + news.image.trim())
                : AssetImage('assets/images/accLogo.png') as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomeText(text: news.title, fontSize: 20, color: Colors.white),
              SizedBox(
                height: 5,
              ),
              CustomeText(
                text: date,
                color: Colors.white,
              ),
            ],
          ),
        ), /* add child content here */
      ),
    );
  }
}

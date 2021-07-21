import 'package:acc/constants/colors.dart';
import 'package:acc/controllers/news.dart';
import 'package:acc/widgets/news_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AllNewsScreen extends StatelessWidget {
  const AllNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Container(
            child: Image.asset('assets/images/accLogo.png'),
            width: 40,
            height: 40,
          ),
          actions: [],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GetX<NewsController>(
            init: NewsController(),
            builder: (news) => ListView(
              shrinkWrap: false,
              children: news.fetchSuccess.value.results
                  .map((e) => Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: NewsCard(news: e)))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

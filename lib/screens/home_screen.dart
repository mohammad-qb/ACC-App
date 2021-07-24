import 'package:acc/constants/colors.dart';
import 'package:acc/controllers/clubMembers.dart';
import 'package:acc/controllers/news.dart';
import 'package:acc/screens/all_news_screen.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:acc/widgets/club_member_card.dart';
import 'package:acc/widgets/grid_view.dart';
import 'package:acc/widgets/news_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    ClubMembersController clubMemberCard = Get.put(ClubMembersController());
    var newsList = newsController.fetchSuccess.value.results;
    var newsSlider = newsList.length > 3
        ? newsList.sublist(newsList.length - 3, newsList.length)
        : newsList;
    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView(shrinkWrap: false, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomeText(
                    text: 'اخر الاخبار',
                    fontSize: 20,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(AllNewsScreen()),
                    child: CustomeText(
                      text: 'المزيد',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  child: newsController.loading.value
                      ? Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(primaryColor),
                          ),
                        )
                      : CarouselSlider(
                          options: CarouselOptions(
                            height: 200.0,
                            autoPlay: true,
                            viewportFraction: 1,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                          ),
                          items: newsSlider.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return NewsCard(news: i);
                              },
                            );
                          }).toList(),
                        )),
              SizedBox(
                height: 15,
              ),
              CustomeText(
                text: 'أعضاء النادي',
                fontSize: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: clubMemberCard.loading.value
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(primaryColor),
                        ),
                      )
                    : CustomeGridView(
                        list: clubMemberCard.fetchSuccess.value.results,
                        dataType: 'club'),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

import 'package:acc/config/config.dart';
import 'package:acc/constants/colors.dart';
import 'package:acc/models/results/clubMembers.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:flutter/material.dart';

class ClubMemberCard extends StatelessWidget {
  final ClubMembers clubMember;
  const ClubMemberCard({Key? key, required this.clubMember}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: true
                      ? NetworkImage(IMAGE_URL + clubMember.image.trim())
                      : AssetImage('assets/images/accLogo.png')
                          as ImageProvider,
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          CustomeText(text: clubMember.firstName + " " + clubMember.lastName),
          SizedBox(
            height: 5,
          ),
          CustomeText(
            text: "الرتبة: " + clubMember.rank,
            fontSize: 13,
            color: greyColor,
          ),
        ],
      ),
    );
  }
}

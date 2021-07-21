import 'package:acc/models/results/clubMembers.dart';
import 'package:acc/widgets/club_member_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomeGridView extends StatelessWidget {
  final List list;
  final String dataType;
  const CustomeGridView({Key? key, required this.list, required this.dataType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: 3,
        itemCount: list.length,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemBuilder: (BuildContext context, int index) {
          if (dataType == 'club') {
            return ClubMemberCard(clubMember: list[index] as ClubMembers);
          } else {
            return Container();
          }
        },
        staggeredTileBuilder: (index) => StaggeredTile.fit(1));
  }
}

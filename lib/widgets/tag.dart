import 'package:acc/constants/colors.dart';
import 'package:acc/helper/open_url.dart';
import 'package:acc/widgets/CustomeText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tag extends StatelessWidget {
  final FaIcon icon;
  final String text;
  final String url;
  const Tag(
      {Key? key, required this.icon, required this.text, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Tooltip(
      message: text,
      child: IconButton(
        icon: icon,
        onPressed: () => launchURL(url),
      ),
    ));
  }
}

import 'package:url_launcher/url_launcher.dart';

Future launchURL(String url) async {
  String url = '';
  url = url;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

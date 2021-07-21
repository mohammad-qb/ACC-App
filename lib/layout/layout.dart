import 'package:acc/constants/colors.dart';
import 'package:acc/screens/about_screen.dart';
import 'package:acc/screens/courses_screen.dart';
import 'package:acc/screens/educational_staff_screen.dart';
import 'package:acc/screens/helper_students.dart';
import 'package:acc/screens/home_screen.dart';
import 'package:acc/screens/outstanding_students_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedPage = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Container(
              child: Image.asset('assets/images/accLogo.png'),
              width: 40,
              height: 40,
            ),
            actions: [],
          ),
          body: Container(
            child: [
              HomeScreen(),
              AboutScreen(),
              CoursesScreen(),
              EducationalStaffScreen(),
              OutstandingStudentsScreen(),
              HelperStudentsScreen()
            ].elementAt(_selectedPage),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey.shade500,
            items: [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.home), label: "الرئيسية"),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.bookmark), label: "من نحن"),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.book), label: "المواد"),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.users),
                  label: "الكادر التعليمي"),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.userGraduate),
                  label: "الطلاب المتفوقيين"),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.handsHelping),
                  label: "الطلاب المساعدين"),
            ],
            currentIndex: _selectedPage,
            selectedItemColor: primaryColor,
            onTap: _onItemTapped,
          ),
        ));
  }
}

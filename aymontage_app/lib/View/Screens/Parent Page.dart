import 'package:aymontage_app/View/Screens/Feed_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'Videos_Screen.dart';

class TopScreen extends StatefulWidget {
  static const String id="Parent_screen";

  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _screens = <Widget>[
    Feed_Screen(),
    Videos_Screen(),
  ];
  PageController _pageController = PageController();

  void _onItemTapped(int slIndex)
  {_pageController.jumpToPage(slIndex);}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,

        physics: NeverScrollableScrollPhysics(),

      ),
      bottomNavigationBar:
      Container(

        decoration: BoxDecoration(color: Colors.white,boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.4), )
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                gap: 10,
                activeColor: Colors.white,
                iconSize: 20,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 500),
                tabBackgroundColor: Colors.grey[900],
                tabs: [
                  GButton(

                    icon: LineIcons.newspaper_o,
                    text: 'Feed',
                  ),
                  GButton(
                    icon: LineIcons.video_camera,
                    text: 'Videos',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  _onItemTapped(index);
                },
            ),
          ),
        ),
      ),
    );
  }
}

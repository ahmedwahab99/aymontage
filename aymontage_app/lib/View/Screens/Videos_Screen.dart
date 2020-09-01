import 'package:aymontage_app/View/Screens/Feed_Screen.dart';
import 'package:aymontage_app/View/Widgets/ExpandableAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Videos_Screen extends StatefulWidget {
  static const String id="videos_screen";
  @override
  _Videos_ScreenState createState() => _Videos_ScreenState();
}

class _Videos_ScreenState extends State<Videos_Screen> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() => setState(() {}));
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget> [

          ExpandableAppBar(title: 'Videos', scrollController: _scrollController,),
          SliverFillRemaining(
            child: Column(
              children: [
                Container(

                )
              ],
            ),
          ),
        ],
      ),


    );
  }
}

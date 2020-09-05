import 'package:aymontage_app/View/Widgets/ExpandableAppBar.dart';
import 'package:aymontage_app/View/Widgets/News_List.dart';
import 'package:aymontage_app/View/Widgets/Post_Box.dart';
import 'package:flutter/material.dart';

class Feed_Screen extends StatefulWidget{
  static const String id="Feed_screen";
  @override
  _Feed_ScreenState createState() => _Feed_ScreenState();
}



class _Feed_ScreenState extends State<Feed_Screen> {

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() => setState(() {}));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget> [

          ExpandableAppBar(title: 'Latest', scrollController: _scrollController, hasAction: true),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index)
                      {
                        return NewsList().getNews()[index];
                      },
                childCount: NewsList().getNews().length,
              )


          ),

        ],
      ),


    );
  }
}


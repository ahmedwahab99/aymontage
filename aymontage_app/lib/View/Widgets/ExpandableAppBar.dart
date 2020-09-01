import 'package:flutter/material.dart';
import 'Menu_Button.dart';
import 'package:line_icons/line_icons.dart';

const double kExpandedHeight=90;

class ExpandableAppBar extends StatelessWidget {
  ExpandableAppBar({@required this.title, @required this.scrollController });

  ScrollController scrollController;
  String title;


  bool get _showTitle {
    return scrollController.hasClients
        && scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions:  <Widget> [
        MenuButton()
      ],

      automaticallyImplyLeading: false,
      backgroundColor: Colors.grey[900],
      expandedHeight: kExpandedHeight,
      floating: false,
      pinned: true,
      snap: false,
      title: _showTitle? Center(
          child: Padding(
          padding: const EdgeInsets.only(left: 65),
          child: Text(
               title,
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      )) : null,
      flexibleSpace:  _showTitle ? null : FlexibleSpaceBar(
        title: Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        titlePadding: EdgeInsets.only(left: 15),
      ),
    );
  }
}


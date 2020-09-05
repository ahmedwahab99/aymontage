import 'package:flutter/material.dart';
import 'Menu_Button.dart';
import 'package:line_icons/line_icons.dart';


class ExpandableAppBar extends StatelessWidget {
  ExpandableAppBar({this.title, this.scrollController , this.kExpandedHeight=90, this.backgroundImage, this.hasAction=false, this.hasLeading=false, }) ;

  bool hasAction, hasLeading;
  ScrollController scrollController;
  String title;
  AssetImage backgroundImage;
  double kExpandedHeight;

  bool get _showTitle {
    return scrollController.hasClients
        && scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: hasAction==false?null:<Widget> [
        MenuButton()
      ],
      leading: hasLeading==false?null: FlatButton(
        child:Icon( Icons.arrow_back_ios) ,
        onPressed: (){ Navigator.pop(context); },
      ),

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


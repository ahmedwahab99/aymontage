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

          ExpandableAppBar(title: 'Latest', scrollController: _scrollController,),
          SliverList(
            delegate: SliverChildListDelegate(NewsList().getNews())


          ),

        ],
      ),


    );
  }
}


///TESTINg//////
class poost
{
  poost({this.text,this.image});

  String text;
  AssetImage image;
}

class text_posts_provider
{
  List <poost> posts=[];

  poost post1 = poost(text: 'Interview with Illustrator & Animator Greg Gunn of Blind',image: new AssetImage('images/post1_example.jpg') );
  poost post2 = poost(text: 'Studio Spotlight: Psyop is an Industry Titan',image: new AssetImage('images/post2_example.jpg') );
  poost post3 = poost(text: 'Industry Spotlight: Gentleman Scholar',image: new AssetImage('images/post3_example.jpg') );
  poost post4 = poost(text: 'Jorge Canedo Estrada on the Motion Graphics Industry & What’s Shaped his Career',image: new AssetImage('images/post4_example.jpg') );
  poost post5 = poost(text: 'Oddfellows Studio Spotlight: Illustrated Looks & Compelling Stories',image: new AssetImage('images/post5_example.jpg') );
}

/////////////////////////////////////////


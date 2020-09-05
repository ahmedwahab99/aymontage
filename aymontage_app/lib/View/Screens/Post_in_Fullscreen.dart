import 'package:aymontage_app/Model/Post.dart';
import 'package:aymontage_app/View/Widgets/ExpandableAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Post_in_fullscreen extends StatefulWidget {
  static const String id="fullScreen_post_screen";

  Post_in_fullscreen({@required this.kpost});
  Post kpost;

  @override
  _Post_in_fullscreenState createState() => _Post_in_fullscreenState(post: kpost);
}

class _Post_in_fullscreenState extends State<Post_in_fullscreen> {


  _Post_in_fullscreenState({this.post});
  Post post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: CustomScrollView(


            slivers:<Widget>[

              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.grey[900],
                collapsedHeight: 41,
                expandedHeight: 300,
                toolbarHeight: 40,
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: FlatButton(
                      child:Icon( Icons.arrow_back_ios,color: Colors.white,) ,
                      onPressed: (){ Navigator.pop(context); },
                    ),
                  ),
                  floating: false,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  background:  Container(
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: post.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                )
              ),
              //
              SliverList(
                //crossAxisAlignment: CrossAxisAlignment.start,
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        post.title,
                        style: GoogleFonts.lora(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
                    ),
                  ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        post.text,
                        style: GoogleFonts.philosopher( color: Colors.black, fontSize: 19,),
                      ),
                    )]
                ),
              ),

            ]
        ),
      ),
    );
  }
}

import 'package:aymontage_app/Model/Post.dart';
import 'package:aymontage_app/View/Screens/Post_in_Fullscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PostBox extends StatelessWidget {
  PostBox({
   @required this.post
  });

  Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: FlatButton(

        child: Container(
          width: 600,
          height: 260,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 10,
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: new DecorationImage(

                      image: post.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.white10,
                  child: Text(post.title, style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, color: Colors.black ),),
                ),
              )
            ],
          ),
        ),

        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>Post_in_fullscreen(kpost: post,)) );
        },
      ),
    );
  }
}
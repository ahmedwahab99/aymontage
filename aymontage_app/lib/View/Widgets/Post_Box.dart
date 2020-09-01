import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PostBox extends StatelessWidget {
  PostBox({
    @required this.title,
    @required this.imagePath
  });

  String imagePath;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: FlatButton(

        //TODO: navigate to FULLSCREEN with parameters of post

        child: Expanded(
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

                        image: new AssetImage(imagePath,),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white10,
                    child: Text(title, style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, color: Colors.black ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
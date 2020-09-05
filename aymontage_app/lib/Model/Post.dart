import 'package:flutter/material.dart';

class Post{
 /* static int _ID=0;
   int postID;*/
   AssetImage image;
   String title;
   String text;

  Post(AssetImage image, String title, String text){
    /*_ID++;
    this.postID=_ID;*/
    this.text=text;
    this.title=title;
    this.image=image;
  }


}
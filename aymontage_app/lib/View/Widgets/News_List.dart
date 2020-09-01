import 'package:flutter/material.dart';
import 'Post_Box.dart';

class NewsList  {

  NewsList()
  {
    addNews();
  }

  List <PostBox> _news=[];

  List <PostBox> getNews()
  {
    return _news;
  }

  void addNews()
  {
    _news.add(PostBox(title:'Interview with Illustrator & Animator Greg Gunn of Blind' ,imagePath:'images/post1_example.jpg' ,));
    _news.add(PostBox(title:'Studio Spotlight: Psyop is an Industry Titan' ,imagePath:'images/post2_example.jpg' ,));
    _news.add( PostBox(title: 'Industry Spotlight: Gentleman Scholar',imagePath: 'images/post3_example.jpg',));
    _news.add(PostBox(title: 'Jorge Canedo Estrada on the Motion Graphics Industry & What’s Shaped his Career',imagePath: 'images/post4_example.jpg',));
    _news.add(PostBox(title:'Oddfellows Studio Spotlight: Illustrated Looks & Compelling Stories' ,imagePath:'images/post5_example.jpg' ,));

  }





}

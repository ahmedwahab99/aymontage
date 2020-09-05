import 'package:aymontage_app/Controller/Post_Manager.dart';
import 'package:aymontage_app/Model/Post.dart';
import 'package:flutter/material.dart';
import 'Post_Box.dart';

class NewsList  {

  NewsList()
  {
    pullAllPosts();
  }

  List <PostBox> _news=[];

  List <PostBox> getNews()
  {
    return _news;
  }

  void pullAllPosts()
  {
    List<PostBox> temp=[];
    for(Post p in PostManager().getPostsFromPostList())
      {
        PostBox box=PostBox(post: p);
        temp.add(box);
      }
    _news=temp;
  }

  void pullNewPosts()
  {}


//TODO: MAKE THIS EFFEICIENT BY USING RECYCLE LISTED LIST ALTER.

}

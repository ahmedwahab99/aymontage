
import 'package:aymontage_app/Model/Post.dart';
import 'package:aymontage_app/Model/Posts_List.dart';

class PostManager{

  List<Post> getPostsFromPostList()
  {
    //TODO: add a function that triggers posts list to refresh
    return PostsList().posts;
  }


  ///TODO get post by id
}

import 'package:aymontage_app/Model/Post.dart';
import 'package:flutter/material.dart';

class PostsList{

  List <Post> posts=[];


  void addPostUsingPost(Post post)
  {
    posts.add(post);
  }


  void addPostUsingArgs(AssetImage image, String title, String text)
  {
    Post post=Post(image,title,text);
    posts.add(post);
  }








  //////////////////////
  PostsList(){      ///
    forTest();      ///TEST
  }                ///
  /////////////////////


  void forTest()
  {
    List<String> title=['Interview with Illustrator & Animator Greg Gunn of Blind','Studio Spotlight: Psyop is an Industry Titan','Industry Spotlight: Gentleman Scholar'
      ,'Jorge Canedo Estrada on the Motion Graphics Industry & What’s Shaped his Career','Oddfellows Studio Spotlight: Illustrated Looks & Compelling Stories' ];
    List<String> images=['images/post1_example.jpg','images/post2_example.jpg' ,'images/post3_example.jpg','images/post4_example.jpg','images/post5_example.jpg'];


    for (int i=0;i<5;i++)
      {
        AssetImage image=new AssetImage(images[i]);
        Post post= Post(image, title[i], 'Ever since motion graphics first entered the scene, there’s been a debate about the line between them and full animation. The opening credits of Hitchcock’s Psycho is an '
            'early example of motion graphics, where the marriage of sound, '
            'motion, and graphic design come together exceptionally well.\n\nBefore computers were widely available, motion graphics were costly and time-consuming, limiting their use to high-budget filmmaking and television production. Computers began to be used as early as the late 1960s as super computers were capable of rendering crude graphics. '
            'John Whitney and Charles Csuri can be considered early pioneers of computer aided animation In the late 1980s to mid-1990s, expensive proprietary graphics systems such as those '
            'from British-based Quantel were quite commonplace in many television stations. Quantel workstations such as the Hal, Henry, Harry, Mirage, and Paintbox were the broadcast graphics standard of the time. Many other real-time graphics systems were used such as Ampex ADO, Abekas and K-Scope for live Digital video effects. '
            'Early proprietary 3D computer systems were also developed specifically for broadcast design such as the Bosch FGS-4000 which was used in the music video for Dire Straits'
            );
        addPostUsingPost(post);
      }

  }

}




/*

_news.add(PostBox(title:'Interview with Illustrator & Animator Greg Gunn of Blind' ,imagePath:'images/post1_example.jpg' ,));
_news.add(PostBox(title:'Studio Spotlight: Psyop is an Industry Titan' ,imagePath:'images/post2_example.jpg' ,));
_news.add( PostBox(title: 'Industry Spotlight: Gentleman Scholar',imagePath: 'images/post3_example.jpg',));
_news.add(PostBox(title: 'Jorge Canedo Estrada on the Motion Graphics Industry & What’s Shaped his Career',imagePath: 'images/post4_example.jpg',));
_news.add(PostBox(title:'Oddfellows Studio Spotlight: Illustrated Looks & Compelling Stories' ,imagePath:'images/post5_example.jpg' ,));
*/

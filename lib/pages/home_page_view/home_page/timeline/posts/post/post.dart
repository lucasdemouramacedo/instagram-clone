import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/timeline/posts/post/widgets/post_icons_bar.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/timeline/posts/post/widgets/post_image.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/timeline/posts/post/widgets/post_top_bar.dart';


class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            PostTopBar(),
            PostImage(),
            PostIconsBar()
          ],
        ),
      ),
    );
  }

}
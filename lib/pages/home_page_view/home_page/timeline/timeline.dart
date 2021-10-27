import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/timeline/posts/posts.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/timeline/stories_bar/stories_bar.dart';

import 'posts/endFeed.dart';


class Timeline extends StatelessWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.12,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              StoriesBar(),
              Posts(),
              EndFeed()
            ],
          ),
        ),
      ),
    );
  }
}

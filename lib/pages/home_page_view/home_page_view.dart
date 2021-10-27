
import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page_view/direct_message_page/direct_message_page.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/home_page.dart';
import 'package:instagram_ui/pages/home_page_view/story_create_page/story_create_page.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final PageController controller = PageController(initialPage: 2);
    return Scaffold(
      backgroundColor:
          Colors.white,
      body: PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      //physics: PageScrollPhysics(),
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        StoryCreatePage(),
        HomePage(),
        DirectMessagePage(),
      ],
    ),
    );
  }
}
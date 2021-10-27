import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/navigation_bar/navigation_bar.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/timeline/timeline.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/top_bar/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          TopBar(),
          Timeline(),
          NavigationBar(),
        ],
      ),
    );
  }
}

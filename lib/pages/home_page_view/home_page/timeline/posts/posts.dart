import 'package:flutter/material.dart';

import 'package:instagram_ui/pages/home_page_view/home_page/timeline/posts/post/post.dart';

class Posts extends StatelessWidget {
  const Posts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page_view/direct_message_page/bottom_bar/bottom_bar.dart';
import 'package:instagram_ui/pages/home_page_view/direct_message_page/messages/messages.dart';
import 'package:instagram_ui/pages/home_page_view/direct_message_page/top_bar/direct_message_top_bar/direct_message_top_bar.dart';

class DirectMessagePage extends StatelessWidget {
  const DirectMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            DirectMessageTopBar(),
            Messages(),
            BottomBar()
          ],
        ));
  }
}

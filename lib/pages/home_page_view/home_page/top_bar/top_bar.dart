import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconHeigth = 30;
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.00,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                        image: AssetImage('assets/top_bar_icons/camera.png'),
                        height: iconHeigth,
                        color: Colors.black,
                  ),
                  Image(
                    image: AssetImage('assets/top_bar_icons/instagram-logo.png'),
                    height: 40,
                    color: Colors.black,
                  ),
                  Image(
                        image: AssetImage('assets/top_bar_icons/direct.png'),
                        height: iconHeigth,
                        color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

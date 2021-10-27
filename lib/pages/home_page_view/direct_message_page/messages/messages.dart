import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page_view/direct_message_page/messages/message/message.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.16,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.84,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                  Message(
                    user: 'taji',
                    foto: 'assets/users-photos-perfil/001-taji.jpg',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

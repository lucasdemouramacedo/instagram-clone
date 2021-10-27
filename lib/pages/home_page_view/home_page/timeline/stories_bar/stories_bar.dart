import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page_view/home_page/timeline/stories_bar/story.dart';


class StoriesBar extends StatelessWidget {
  const StoriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Story(
              user: 'taji',
              foto: 'assets/users-photos-perfil/001-taji.jpg',
            ),
            Story(
              user: 'ernando',
              foto: 'assets/users-photos-perfil/002-ernando.jpg',
            ),
            Story(
              user: 'alice',
              foto: 'assets/users-photos-perfil/003-alice.jpg',
            ),
            Story(
              user: 'pedrolucas',
              foto: 'assets/users-photos-perfil/004-pedrolucas.jpg',
            ),
            Story(
              user: 'fernandasouza',
              foto: 'assets/users-photos-perfil/005-fernandasouza.jpg',
            ),
            Story(
              user: 'amandasilva',
              foto: 'assets/users-photos-perfil/006-amandasilva.jpg',
            ),
            Story(
              user: 'heitorgoncalves',
              foto: 'assets/users-photos-perfil/007-heitorgoncalves.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

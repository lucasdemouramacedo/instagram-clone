import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.90,
      width: MediaQuery.of(context).size.width,
      child:ClipRRect(
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image(
                      image: AssetImage(
                          'assets/users-photos-perfil/001-taji.jpg'),
                    ),
        ),
      ),
    );
  }
}
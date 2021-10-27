import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconHeigth = 20;
    return  Positioned(
            top:MediaQuery.of(context).size.height * 0.945,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 1,
         decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: -10, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              -5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                      image: AssetImage('assets/navigation_bar_icons/home.png'),
                      height: iconHeigth,
                      color: Colors.black,
                ),
                Image(
                      image: AssetImage('assets/navigation_bar_icons/explore.png'),
                      height: iconHeigth,
                      color: Colors.black,
                ),
                Image(
                      image: AssetImage('assets/navigation_bar_icons/post.png'),
                      height: iconHeigth,
                      color: Colors.black,
                ),
                Image(
                      image: AssetImage('assets/navigation_bar_icons/atividade.png'),
                      height: iconHeigth,
                      color: Colors.black,
                ),
                Image(
                      image: AssetImage('assets/navigation_bar_icons/atividade.png'),
                      height: iconHeigth,
                      color: Colors.black,
                ),
                Container(
                  height: iconHeigth,
                  width: iconHeigth,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
              ],
            ),
          )
        ],
      ) ,
      ),
    );
  }
}
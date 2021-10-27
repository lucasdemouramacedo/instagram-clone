import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.940,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), topRight: Radius.circular(0)),
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
          child: Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.photo_camera,
                        size: 30,
                        color: Colors.blue,
                      )),
                  Text('Câmera',
                      style: GoogleFonts.roboto(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            ),
          )),
    );
  }
}

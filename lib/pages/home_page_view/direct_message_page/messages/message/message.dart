import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Message extends StatelessWidget {
  final String foto;
  final String user;
  const Message({Key? key, required this.foto, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20,15),
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.red, Colors.yellow]),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Colors.white,
                              width: 3,
                              style: BorderStyle.solid)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image(
                            image: AssetImage(foto),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text(user, //Propriedade de Texto
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ))),
                            ),
                            Container(
                              child: RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          'Olá, tudo bom?', //Propriedade de Texto
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black))),
                                  TextSpan(
                                      text: ' • 3m', //Propriedade de Texto
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black26))),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Icon(
              Icons.photo_camera,
              size: 30,
              color: Colors.black12,
            )
          ],
        ),
      ),
    );
  }
}

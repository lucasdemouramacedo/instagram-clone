import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostTopBar extends StatelessWidget {
  const PostTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.red, Colors.yellow]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: Colors.black12,
                            width: 1.5,
                            style: BorderStyle.solid)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image(
                          image: AssetImage(
                              'assets/users-photos-perfil/001-taji.jpg'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('taji', //Propriedade de Texto
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ))),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            _bottomSheet(context);
          },
          child: Container(
           //color: Colors.blueGrey[50],
            height: 40,
            width: 40,
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ),
      ]),
    );
  }
}

_bottomSheet(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext c) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('Denunciar...', //Propriedade de Texto
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ))),
                  ],
                ),
                Row(
                  
                  children: [
                    Text('Não tenho interesse', //Propriedade de Texto
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.red
                        ))),
                  ],
                ),
                Row(
                  children: [
                    Text('Ativar notificações das publicações', //Propriedade de Texto
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ))),
                  ],
                ),
                Row(
                  children: [
                    Text('Copiar link', //Propriedade de Texto
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ))),
                  ],
                ),
                Row(
                  children: [
                    Text('Compartilhar em...', //Propriedade de Texto
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ))),
                  ],
                ),
                Row(
                  children: [
                    Text('Deixar de Seguir', //Propriedade de Texto
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ))),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

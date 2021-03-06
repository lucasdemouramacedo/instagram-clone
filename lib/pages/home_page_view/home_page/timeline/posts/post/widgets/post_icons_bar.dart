import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostIconsBar extends StatelessWidget {
  const PostIconsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('assets/post_bar_icons/like.png'),
                      color: Colors.black,
                      height: 20,
                    ),
                    Image(
                      image: AssetImage('assets/post_bar_icons/comentario.png'),
                      color: Colors.black,
                      height: 20,
                    ),
                    Image(
                      image: AssetImage('assets/post_bar_icons/enviar.png'),
                      color: Colors.black,
                      height: 20,
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage('assets/post_bar_icons/salvar.png'),
                color: Colors.black,
                height: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: [
                Text('55.845 pessoas gostaram',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ))),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: RichText(
                    textAlign: TextAlign.left,
                    maxLines: 100,
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'taji', //Propriedade de Texto
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black))),
                      TextSpan(
                          text:
                              '  Nem a nada, nem a ningu??m. Pegue uma Biografia e use como inspira????o e n??o como compara????o. Voc?? ?? pe??a ??nica! Acredite. Se voc?? ?? ateu, acredite no seu poder de realizar. Se tem religi??o, ou simpatia por uma, acredite no seu ???Deus???, mas n??o deixe de criar. N??o espere que uma ora????o v?? fazer o que precisa ser feito. A carne em cima da mesa n??o vai ficar pronta com a sua f??, mas ela pode temperar ainda mais o alimento com a determina????o. Acreditar ?? ter o poder de transformar o que parece imposs??vel.',
                          //overflow: TextOverflow.clip,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black))),
                      TextSpan(
                          text: ' #goodvibes',
                          //overflow: TextOverflow.clip,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.blue))),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Text('Ver todos os coment??rios',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45),
                    ))
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text('2 DIAS ATR??S',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Colors.black38),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

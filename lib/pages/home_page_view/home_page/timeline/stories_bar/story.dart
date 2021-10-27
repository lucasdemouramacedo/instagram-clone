import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Story extends StatelessWidget {
  final String foto;
  final String user;
  const Story({ Key? key, required this.foto, required this.user }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.yellow]),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                height: 67,
                width: 67,
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  user, //Propriedade de Texto
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )
                    )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
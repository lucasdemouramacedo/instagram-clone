import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DirectMessageTopBar extends StatelessWidget {
  const DirectMessageTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.00,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:4),
                        child: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'taji',
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Icon(
                        Icons.expand_more,
                        size: 26,
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Row(
                    children: [
                      Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.drive_file_rename_outline,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: TextField(
                      style: GoogleFonts.roboto(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Colors.black87,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black38,
                          ),
                          suffixIcon: Icon(
                            Icons.tune,
                            color: Colors.black38,
                          ),
                          hintText: 'Busque mensagens',
                          hintStyle: GoogleFonts.roboto(
                              color: Colors.black38,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          filled: true,
                          fillColor: Colors.blueGrey[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

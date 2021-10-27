import 'package:flutter/material.dart';

class CommentBar extends StatefulWidget {
  const CommentBar({Key? key}) : super(key: key);

  @override
  _CommentBarState createState() => _CommentBarState();
}

class _CommentBarState extends State<CommentBar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
        child: TextField(
          cursorHeight: 30,
          cursorColor: Colors.black,
          showCursor: false,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(
                  width: 10,
                  style: BorderStyle.solid,
                ),
              ),
              filled: true,
              hintStyle:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
              hintText: "Adicione um comentário",
              fillColor: Colors.white70),
        ),
      )
    ]);
  }
}

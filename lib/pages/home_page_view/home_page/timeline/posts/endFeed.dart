import 'package:flutter/material.dart';

class EndFeed extends StatelessWidget {
  const EndFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ops, o feed acabou!', //Propriedade de Texto
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w600, color: Colors.grey[300]),
            ),
            Icon(
              Icons.face,
              size: 30,
              color: Colors.grey[300],
            )
          ],
        ),
      ),
    );
  }
}

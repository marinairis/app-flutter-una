import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          fit: StackFit.passthrough,  
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.green,
                    Colors.yellow.withAlpha(150),
                    Colors.green,
                  ],
                ),
              ),
              child: Image(
                alignment: Alignment.center,
                image: NetworkImage(
                  'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif',
                ),
              ),
            ),
            
          ],
        ),
      ),
    ),
  );
}
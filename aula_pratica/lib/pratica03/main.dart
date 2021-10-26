import 'package:flutter/material.dart';

// Exercício Prática 03
void main() {
  String nome = "Ana";
  String data = 'quinta-feira';

  runApp(
    Center(
      child: RichText(
      textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[ 
            TextSpan( 
              text: '$nome!',
              style: TextStyle(
                color: Colors.blue,
                backgroundColor: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: '\nHoje é $data!',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
              ),
            ),
            TextSpan(
              text: '\nBom dia!',
            ),
          ],
        ),
      ),
    ),
  );
}
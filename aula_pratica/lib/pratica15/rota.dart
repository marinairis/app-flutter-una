import 'package:flutter/material.dart';

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  String mensagem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$mensagem',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Segunda Rota'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                ).then((resposta) {
                  setState(() {
                    mensagem = resposta;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final TextEditingController num01Controller = TextEditingController();
  final TextEditingController num02Controller = TextEditingController();

  somar() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double soma = num01 + num02;
    return '$num01 + $num02 = $soma';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            controller: num01Controller,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => num01Controller,
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
              labelText: 'Informe o primeiro número',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            controller: num02Controller,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => num02Controller,
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
              labelText: 'Informe o segundo número',
            ),
          ),
        ),
        ElevatedButton(
            child: Text('Voltar para primeira Rota'),
            onPressed: () {
              Navigator.pop(context, somar());
            }),
      ]),
    );
  }
}

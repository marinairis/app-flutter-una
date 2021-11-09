import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";

  imc() {
    double peso = double.parse(this.pesoController.text); //te
    double altura = double.parse(this.alturaController.text);
    double result = peso / (altura * altura);
    setState(() {
      this.resp = "IMC = ${result.toStringAsFixed(2)}\n";
      if (result < 18.6)
        this.resp += "Abaixo do peso";
      else if (result < 25.0)
        this.resp += "Peso ideal";
      else if (result < 30.0)
        this.resp += "Levemente acima do peso";
      else if (result < 35.0)
        this.resp += "Obesidade Grau I";
      else if (result < 40.0)
        this.resp += "Obesidade Grau II";
      else
        this.resp += "Obesidade Grau IIII";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o seu peso',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe sua altura',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(imc());
              setState(imc);
            },
            child: Text(
              'imc',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
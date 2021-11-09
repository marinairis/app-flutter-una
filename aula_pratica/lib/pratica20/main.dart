import 'package:flutter/material.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int indice = 0;

  static const List<Image> telas = <Image>[
    Image(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1547721064-da6cfb341d50%27')),
    Image(
        image: NetworkImage(
            'https://flutter.dev/assets/images/docs/catalog-widget-placeholder.png%27')),
    Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/213780/pexels-photo213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500%27%27')),
  ];

  void selecionar(int indice) {
    setState(() => this.indice = indice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: telas.elementAt(this.indice),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Animais',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Programação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_rounded),
            label: 'Alimentação',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.green,
        onTap: selecionar,
      ),
    );
  }
}

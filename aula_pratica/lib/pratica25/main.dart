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
        'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
      ),
    ),
    Image(
      image: NetworkImage(
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tecmundo.com.br%2Fprogramacao&psig=AOvVaw24TQ8h5ABgmpYpgl3OygoN&ust=1638113446715000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIDJhLnuuPQCFQAAAAAdAAAAABAD',
      ),
    ),
    Image(
      image: NetworkImage(
        'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      ),
    ),
    Image(
      image: NetworkImage(
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.gazinatacado.com.br%2Facessibilidade-na-hotelaria%2F&psig=AOvVaw2LU-DsPwtKhw65YIgGwgu9&ust=1638113541034000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLj3nObuuPQCFQAAAAAdAAAAABAD',
      ),
    ),
    Image(
      image: NetworkImage(
        'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
      ),
    ),
  ];

  void selecionar(int indice) {
    setState(() => this.indice = indice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Página Inicial',
        ),
      ),
      body: Container(
        child: Center(
          child: telas.elementAt(
            this.indice,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Animais',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Colors.grey,
            ),
            label: 'Programação',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.warning_rounded,
              color: Colors.grey,
            ),
            label: 'Alimentação',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.accessibility,
              color: Colors.grey,
            ),
            label: 'Acessibilidade',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.room_sharp,
              color: Colors.grey,
            ),
            label: 'Galo',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.amber[800],
        onTap: selecionar,
      ),
    );
  }
}
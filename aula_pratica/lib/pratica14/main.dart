import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraTela(),
          '/segunda': (context) => SegundaTela(),
          '/terceira': (context) => TerceiraTela(),
          '/quarta': (context) => QuartaTela(),
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Primeira Tela",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '1',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/segunda',
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Segunda Tela",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '2',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                ),
                ElevatedButton(
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/terceira',
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Terceira Tela",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '3',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/quarta',
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Quarta Tela",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '4',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/segunda',
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
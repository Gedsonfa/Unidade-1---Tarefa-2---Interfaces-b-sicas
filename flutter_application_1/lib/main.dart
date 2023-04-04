import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> _textColors = [    Colors.blue,    Colors.red,    Colors.green,    Colors.yellow,    Colors.purple,    Colors.orange, Colors.black ];
  
  Color _opaColor = Colors.black; // inicializa com a cor preta

  void _changeTextColor() {
    setState(() {
      _textColors.shuffle();
      _opaColor = _textColors.first; // atualiza a cor do "opa" com a primeira cor da lista embaralhada
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obama Spinning'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/images/images.jpg'),
              image: NetworkImage(
                  'https://media.tenor.com/AkQpJDh4fqEAAAAS/barack-obama-sphere.gif'),
              fadeInDuration: Duration(milliseconds: 500),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _changeTextColor();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // cor de fundo do botão
                textStyle: TextStyle(
                  fontSize: 16.0, // tamanho da fonte
                  fontWeight: FontWeight.bold, // negrito
                  color: Colors.white, // cor do texto
                  letterSpacing: 2.0, // espaçamento entre as letras
                ),
              ),
              child: Text('Clicável'),
            ),
            SizedBox(height: 16),
            Text(
              'Fernanda deixa eu ver o Enzo, o filho é meu também',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _opaColor, // usa a cor atualizada do "opa"
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                Text('Início'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                Text('Buscar'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
                Text('Menu'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

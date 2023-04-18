import 'package:flutter/material.dart';
import 'back.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App frases aleatórias',
    home: Frases(),
  ));
}

class Frases extends StatefulWidget {
  const Frases({Key? key}) : super(key: key);

  @override
  State<Frases> createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {
  String frase = "Clique abaixo para gerar uma frase!";
  String imageUrl = 'image/programming_dis_logo.png';

  void _gerarFrase() {
    var rng = Random();
    var num = rng.nextInt(frases.length);

    setState(() {
        frase = frases[num];
        imageUrl = imageUrls[num];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goodbye, Cruel World'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Text(
                '$frase',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

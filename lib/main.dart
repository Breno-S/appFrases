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
  String piada = "O que o CEO da NASA disse ao programador Rust que acabou de ser contratado? R: Só tenha cuidado para não enferrujar nossos foguetes, senão teremos de usar o garbage collector";
  String frase = "Clique abaixo para gerar uma frase!";

  var rng = Random();
  String comeco = '';
  String sujeito = '';
  String meioFrase =  '';
  String adjetivo = '';
  String finalFrase = '';

  void _formarFrase() {
    setState(() {
    comeco = comecoFrase1[rng.nextInt(comecoFrase1.length)];
    sujeito = sujeitos1[rng.nextInt(sujeitos1.length)];
    meioFrase = meioFrase1[rng.nextInt(meioFrase1.length)];
    adjetivo = adjetivos1[rng.nextInt(adjetivos1.length)];
    finalFrase = finalFrase1[rng.nextInt((finalFrase1.length))];

    if(rng.nextInt(100) < 5) {
      frase = piada;
    }
    else {
      frase = '$comeco $sujeito $meioFrase $adjetivo $finalFrase';
    }

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
              Image.asset('image/programming_dis_logo.png'),
              Text('$frase',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(
                  onPressed: _formarFrase,
                  child: Text('Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



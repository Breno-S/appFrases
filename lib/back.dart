import 'package:flutter/material.dart';
import 'dart:math';

List<String> frases = [
  // 0
  'O que o CEO da NASA disse ao programador Rust?\n\nR: "Só tenha cuidado para não enferrujar nossos foguetes, senão teremos de usar o garbage collector."',
  // 1
  '"Até parece que eu vou aprender a programar... Peraí, você disse que tem uma grande demanda nesse setor?"',
  // 2
  'Nesta vida só existem duas coisas duradouras: novela da Record e a tela de carregamento do Android Studio.',
  // 3
  "Não há nada que um parênteses a mais não resolva.",
  // 4
  'Programação Orientada a Objetos: "Erre, mas erre com classe."',
  // 5
  "Qual a diferença entre C e C++?\n\nR: 1",
  // 6
  '"O chatGPT vai acabar com nosso trabalho" (famosas últimas palavras).',
  // 7
  "Nada substitui a prática, nem mesmo o seu curso de 100 horas de python para iniciantes.",
  // 8
  "Pensamento crítico é essencial na vida do programador.",
  // 9
  "Bons tempos quando eu achava que estava hackeando só de apertar F12 no navegador.",
  // 10
  "Flutter salva vidas.",
];

List<String> imageUrls = [
  "image/office-handshake.jpg", //0
  "image/cem_mil_dolares.gif", //1
  "image/waiting.gif", //2
  "image/lil-yachty-drake.gif", //3
  "image/tuxedo.jpg", //4
  "image/surprised-realization.gif", //5
  "image/pedro-pascal-crying.gif", //6
  "image/walter-white.gif", //7
  "image/spongebob-patrick.gif", //8
  "image/matrix.jpg", //9
  "image/drake-accepts.jpg", //10
];

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
        title: const Text(
          'Goodbye, Cruel World!',
          style: TextStyle(
            fontFamily: 'UbuntuMono',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 300, child: Image.asset(imageUrl)),
              Text(
                frase,
                style: const TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: const Text(
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

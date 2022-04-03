import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Mulheres - com elas uma encrenca, mas sem elas não se pode viver.",
    "Vencer é o que importa. O resto é a consequência.",
    "Uma maneira de preservar sua própria imagem é não deixar que o mundo invada sua casa. "
        "Foi um modo que encontrei de preservar ao máximo meus valores.",
    "No que diz respeito ao empenho, ao compromisso, ao esforço, à dedicação, não existe meio termo. "
        "Ou você faz uma coisa bem feita ou não faz.",
    "Se você quer ser bem-sucedido, precisa ter dedicação total, buscar seu último limite e dar o melhor de si.",
    "Se cheguei onde cheguei e consegui fazer tudo o que fiz, foi porque tive a oportunidade de crescer bem, num bom ambiente familiar, de viver bem, sem problemas econômicos e de ser orientado no caminho certo nos momentos decisivos de minha vida.",
    "O fato de ser brasileiro só me enche de orgulho!",
    "Vencer sem correr riscos, é triunfar sem glórias!",
    "Sempre faça tudo com muito amor e com muita fé em Deus, que um dia você chega lá. De alguma maneira você chega lá.",
    "Na adversidade, uns desistem, enquanto outros batem recordes.",
    "Se quisermos mudar nossa nação, é pelas crianças que devemos começar",
    "Somos insignificantes. Por mais que você programe sua vida, a qualquer momento tudo pode mudar.",
    "Podem ser encontrados aspectos positivos até nas situações negativas e é possível utilizar tudo isso como experiência para o futuro, seja como piloto, seja como homem.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Frases Ayrton Senna",
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.normal,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 3, color: Colors.amberAccent)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: Colors.amberAccent,
                  ),
                ),
                child: Image.network(
                    'https://img1.icarros.com/dbimg/imgadicionalnoticia/4/107451_1'),
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              ),
            ]),
      ),
    );
  }
}

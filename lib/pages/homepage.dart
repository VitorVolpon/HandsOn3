import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:handson3/pages/secondpage.dart';
import 'package:handson3/widgets/buttonwidget.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

class HomePage extends StatelessWidget {
  var r = Random().nextInt(100);
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Navegação + Pacotes + API',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ButtonWidget(
          texto: 'Buscar Pokémon aleatório',
          funcao: () async {
            var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$r');
            String urlString = 'https://pokeapi.co/api/v2/pokemon/$r';
            var response = await http.get(url);
            if(response.statusCode == 200) {
              var jsonResponse = convert.jsonDecode(response.body) as Map<dynamic, dynamic>;
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(jsonResponse: jsonResponse, url: urlString)));
            }

          }),
      ),
    );
  }
}
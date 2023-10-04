import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String texto;
  final Function() funcao;
  const ButtonWidget({super.key, required this.texto, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
    
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: const StadiumBorder()
        ),
        onPressed: funcao,
        child: Text(texto, style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
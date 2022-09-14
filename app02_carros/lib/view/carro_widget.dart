// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CarroWidget extends StatelessWidget {
  //Atributos da classe
  final String marca;
  final String modelo;
  final String foto;

  //Construtor
  const CarroWidget(this.marca, this.modelo, this.foto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Margens
      margin: EdgeInsets.all(15),
      

      //Faz com que a largura seja igual a largura do dispositivo (Responsívo)
      width: MediaQuery.of(context).size.width,
      height: 300,
      
      //Decorações da caixa
      decoration: BoxDecoration(
        color: Colors.yellow.shade100,
        border: Border.all(
          width: 4,
          color: Colors.black54,
        ),
        borderRadius: BorderRadius.circular(15)
      ),

      child: Column(
        children: [
          Text(marca, style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
          Text(modelo),
          Image.asset(
            'lib/images/$foto',
            height: 220,
            fit: BoxFit.fill,
          ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:geek_connect/models/categoria.dart';
import 'package:geek_connect/widgets/constantes.dart';
// parte de categoria sem funcionalidade ate o momento

class Categorias extends StatelessWidget {
  const Categorias({
    super.key,
    required this.currentCat,
  });

  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categoria.length, (index) => Container(
          decoration: BoxDecoration(
            color: currentCat == categoria[index] 
              ? kprimaryColor
              : Colors.white,
              borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20, 
            vertical: 10
          ),
           margin: const EdgeInsets.only(right: 20),
          child: 
          Text(
            categoria[index],
            style: TextStyle(
              color: currentCat == categoria[index] 
                ? Color.fromARGB(255, 79, 11, 206) 
                : Colors.grey.shade700,
            ), 
          ),
        ),),
      ),
    );
  }
}

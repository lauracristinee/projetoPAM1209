import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold( //scaffold para criar um layout padrão
    //a partir daqui a criação do gradient roxo, com as posições do mesmo
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[const Color(0xFF9B5DE5), const Color.fromARGB(255, 236, 221, 255).withOpacity(0.5)],
          begin:Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
      ),

      //imagem + texto 
    child: Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/geeks.png', height: 280),
              const SizedBox(height: 5),

              //formatação de texto
              const Text(
                'Seja Bem-Vindo!',
                style: TextStyle(
                  fontFamily: 'Biofit',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Ao maior aplicativo de eventos geeks da grande São Paulo!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Biofit',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
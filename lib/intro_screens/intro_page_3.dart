// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 236, 221, 255),
              Color.fromARGB(255, 217, 197, 242),
              Color(0xFF8B16CC),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              //ficando transparente
              child: Opacity(
                opacity: 0.1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0.0), 
                  child: Image.asset(
                    'images/geeks.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 450,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Só aqui',
                      style: TextStyle(
                        fontFamily: 'Biofit',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Com a gente você pode explorar e se aventurar '
                      'em novas histórias, '
                      'implementando novos personagens no seu cotidiano',
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
          ],
        ),
      ),
    );
  }
}
    
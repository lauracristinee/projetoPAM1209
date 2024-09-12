import 'package:flutter/material.dart' show BuildContext, ColorScheme, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;
import 'package:geek_connect/widgets/introScreen.dart';
import 'package:geek_connect/widgets/constantes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Biofit",
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        scaffoldBackgroundColor: kbackgroundColor,
        useMaterial3: true,
      ),
      home: IntroScreen(),   
    );
  }
}

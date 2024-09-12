// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geek_connect/screens/saibamais.dart';
import 'package:geek_connect/screens/sobre.dart';
import 'package:geek_connect/widgets/categorias.dart';
//import 'package:geek_connect/widgets/constantes.dart';
import 'package:geek_connect/widgets/eventos_list.dart';
import 'package:geek_connect/widgets/home_app_bar.dart';
import 'package:geek_connect/widgets/home_search_bar.dart';

// tela onde tudo acontece, chamo todas as classes criadas para ela

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

@override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat= "All";  

//na utilização do menu hambúrguer, foi utilizado um drawer, uma propriedade específica para isso
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0xFF9B5DE5),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 180, 155, 212),
              ),
              //tentando acrescentar uma imagem no menu hamburguer
              child: Column(
                  children: [
                  Image.asset(
                    'images/geeks.png',
                    fit: BoxFit.cover,
                    width: 125, // largura img top
                    height: 125, // altura img top
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Saiba mais',
                style: TextStyle(

                  fontFamily: 'Biofit',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              
              //botão que encaminha na tela saiba mais - no nome está "sobre nós"
              //estilizar páginas sobre e saiba mais 
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SaibaMais( //importar
                          ),
                        ),
                      );
              },
            ),
            ListTile(
              title: Text(
                'Sobre nós',
                style: TextStyle(
                  fontFamily: 'Biofit',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
              ),
              ),

              //botão que encaminha na tela saiba mais - no nome está "sobre nós"
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardExamplesApp(  //importar
                          ),
                        ),
                      );
              },
            ),
          ],
        ),
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                const HomeAppBar(
                  listaFavoritos: [
                  ],
                ),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage("/images/banner.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Categorias',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Categorias(currentCat: currentCat),
                const SizedBox(height: 20),
                const EventosList(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//Cod antigo, sem a o menu hambúrguer
/*
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat= "All";  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(listaFavoritos: [],),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage(
                        "/images/banner.png"
                      ),
                      fit: BoxFit.fill
                    ),
                  )
                ),
                const SizedBox(height: 20),
                const Text(
                  catego, 
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20),
                Categorias(currentCat: currentCat),
                const SizedBox(height: 20),
                const EventosList(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/

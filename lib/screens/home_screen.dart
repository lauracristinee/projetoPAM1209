import 'package:flutter/material.dart';
import 'package:geek_connect/widgets/categorias.dart';
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
                const HomeAppBar(),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: const AssetImage(
                        "/images/banner.png"
                      ),
                      fit: BoxFit.fill
                    ),
                  )
                ),
                const SizedBox(height: 20),
                Text(
                  "Categoria", 
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20),
                Categorias(currentCat: currentCat),
                const SizedBox(height: 20),
                EventosList(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:geek_connect/categorias.dart';
import 'package:geek_connect/home_app_bar.dart';
import 'package:geek_connect/home_search_bar.dart';
import 'package:geek_connect/models/eventos.dart';
import 'package:iconsax/iconsax.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Eventos por Sp",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Ver tudo",
                        style: TextStyle()
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      eventos.length, 
                      (index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 200,
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        eventos[index].imgEvento
                                      ),
                                      fit: BoxFit.fill,
                                    ), 
                                  ),
                                ),
                                const SizedBox( height: 10),
                                Text(eventos[index].eventoName, 
                                style: TextStyle(
                                  fontSize: 15, 
                                  fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox( height: 10),
                                Row(
                                  children: [
                                    Icon(Iconsax.calendar ,
                                    size: 15,
                                    color: Colors.grey,
                                    ),
                                    Text(
                                      "${eventos[index].eventoData}", 
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


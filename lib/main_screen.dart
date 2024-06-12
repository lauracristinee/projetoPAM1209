// ignore_for_file: prefer_const_constructors

// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geek_connect/widgets/constantes.dart';
import 'package:geek_connect/screens/home_screen.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomePageState();
}

class _HomePageState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white ,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: currentTab == 0 ? kprimaryColor : Colors.grey,
                  ),
                  Text('Home',  
                    style: 
                      TextStyle(
                        fontSize: 14,
                        color: currentTab == 0 ? kprimaryColor : Colors.grey,
                      ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                    color: currentTab == 1 ? kprimaryColor : Colors.grey,
                  ),
                  Text('Favoritos',  
                    style: 
                      TextStyle(
                        fontSize: 14,
                        color: currentTab == 1 ? kprimaryColor : Colors.grey,
                      ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    currentTab == 2 ? Iconsax.setting5 : Iconsax.setting,
                    color: currentTab == 2 ? kprimaryColor : Colors.grey,
                  ),
                  Text('Configuração',  
                    style: 
                      TextStyle(
                        fontSize: 14,
                        color: currentTab == 2 ? kprimaryColor : Colors.grey,
                      ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
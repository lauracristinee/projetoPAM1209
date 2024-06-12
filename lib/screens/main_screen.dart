import 'package:flutter/material.dart';
import 'package:geek_connect/screens/home_screen.dart';
import 'package:geek_connect/widgets/constantes.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: currentTab == 0 ? kprimaryColor : Colors.grey,
                  ),
                  Text(barhome,  
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.setting5 : Iconsax.setting,
                    color: currentTab == 1 ? kprimaryColor : Colors.grey,
                  ),
                  Text(barconfig,  
                    style: 
                      TextStyle(
                        fontSize: 14,
                        color: currentTab == 1 ? kprimaryColor : Colors.grey,
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

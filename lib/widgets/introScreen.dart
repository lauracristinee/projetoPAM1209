// ignore: file_names
import 'package:flutter/material.dart';
import 'package:geek_connect/intro_screens/intro_page_1.dart';
import 'package:geek_connect/intro_screens/intro_page_2.dart';
import 'package:geek_connect/intro_screens/intro_page_3.dart';
import 'package:geek_connect/screens/main_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //pular

                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('Pular'),
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                //Iniciar
                onLastPage ?
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return MainScreen();
                        },
                      ),
                    );
                  },
                  child: Text('Iniciar'),
                ) 
                //proximo
                : GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text('Proximo'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:geek_connect/widgets/all_screen_app_bar.dart';
import 'package:geek_connect/widgets/eventos_all_card.dart';
import 'package:geek_connect/models/eventos.dart';


class AllEventosScreen extends StatefulWidget {
  const AllEventosScreen({super.key});

  @override
  State<AllEventosScreen> createState() => _AllEventosScreenState();
}

class _AllEventosScreenState extends State<AllEventosScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AllEventosScreenAppBar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20
                  ),
                  itemBuilder:(context, index) => EventosCard( eventos: eventos[index],),
                  itemCount: eventos.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

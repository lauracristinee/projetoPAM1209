import 'package:flutter/material.dart';
import 'package:geek_connect/models/eventos.dart';
import 'package:geek_connect/screens/favorito_screen.dart';
import 'package:geek_connect/widgets/constantes.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  final List<Evento> listaFavoritos;

  const HomeAppBar({
    Key? key,
    required this.listaFavoritos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ola,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
            SizedBox(height: 8),
            Text(
              tituloFavoritos,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoritosScreen(
                  listaFavoritos: listaFavoritos,
                ),
              ),
            );
          },
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            fixedSize: const Size(50, 50),
          ),
          icon: Icon(Iconsax.heart),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:geek_connect/models/eventos.dart';
import 'package:geek_connect/screens/detalhes_eventos.dart';
import 'package:iconsax/iconsax.dart';

class EventosCard extends StatelessWidget {
  final Evento eventos;
  const EventosCard({super.key, required this.eventos});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetalhesScreen(eventos: eventos)
          ),
        ),
      // width: 200,
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
                    image: AssetImage(eventos.imgEvento),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                eventos.eventoName,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Iconsax.calendar,
                    size: 15,
                    color: Colors.grey,
                  ),
                  Text(
                    "${eventos.eventoData}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 1,
            right: 1,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(30, 30),
              ),
              iconSize: 20,
              icon: eventos.favorito//!
                  ? const Icon(
                      Iconsax.heart5,
                      color: Colors.red,
                    )
                  : const Icon(Iconsax.heart),
            ),
          )
        ],
      ),
    );
  }
}

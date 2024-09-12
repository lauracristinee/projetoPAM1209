import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geek_connect/models/eventos.dart';
import 'package:geek_connect/screens/detalhes_eventos.dart';
import 'package:geek_connect/widgets/constantes.dart';
import 'package:iconsax/iconsax.dart';

class FavoritosScreen extends StatelessWidget {
  final List<Evento> listaFavoritos;

  const FavoritosScreen({required this.listaFavoritos, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(55, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  color: Colors.black,
                  icon: const Icon(CupertinoIcons.chevron_back),
                ),
                const Spacer(),
                const Text(
                  tituloFavoritos,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(55, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  color: Colors.black,
                  icon: const Icon(Iconsax.notification),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listaFavoritos.length,
                itemBuilder: (context, index) {
                  final evento = listaFavoritos[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetalhesScreen(
                            eventos: evento,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(evento.imgEvento),
                      title: Text(evento.eventoName),
                      subtitle: Text(evento.eventoData),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
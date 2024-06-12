import 'package:flutter/material.dart';
import 'package:geek_connect/models/eventos.dart';
import 'package:geek_connect/screens/all_eventos_screen.dart';
import 'package:geek_connect/screens/detalhes_eventos.dart';
import 'package:geek_connect/screens/favorito_screen.dart';
// import 'package:geek_connect/screens/favoritos_screen.dart';
import 'package:geek_connect/widgets/constantes.dart';
import 'package:iconsax/iconsax.dart';
// Aqui é a parte eventos por SP, todos os dados vêm de uma classe Eventos que armazena todos os dados relacionados aos eventos

class EventosList extends StatefulWidget {
  const EventosList({Key? key}) : super(key: key);

  @override
  _EventosListState createState() => _EventosListState();
}

class _EventosListState extends State<EventosList> {
  final List<Evento> _listaFavoritos = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              eventossp,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllEventosScreen(),
                    ),
                  ),
                  child: const Text(
                    all,
                  ),
                ),
                IconButton(
                  icon: const Icon(Iconsax.heart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavoritosScreen(
                          listaFavoritos: _listaFavoritos,
                        ),
                      ),
                    ).then((_) { // atualiza estado
                      setState(() {});
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              eventos.length,
              (index) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesScreen(
                      eventos: eventos[index],
                    ),
                  ),
                ),
                child: Container(
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
                                image: AssetImage(eventos[index].imgEvento),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            eventos[index].eventoName,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.calendar,
                                size: 15,
                                color: Colors.grey,
                              ),
                              Text(
                                "${eventos[index].eventoData}",
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
                          onPressed: () {
                            setState(() {
                              if (_listaFavoritos.contains(eventos[index])) {
                                _listaFavoritos.remove(eventos[index]);
                              } else {
                                _listaFavoritos.add(eventos[index]);
                              }
                            });
                          },
                          iconSize: 20,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          icon: _listaFavoritos.contains(eventos[index])
                              ? const Icon(Iconsax.heart5, color: Colors.red)
                              : const Icon(Iconsax.heart),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

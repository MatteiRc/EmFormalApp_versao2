import 'package:flutter/material.dart';
import 'package:flutter_app/scr/modelos/categoria.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';

import '../helpers/cores.dart';

List<Categoria> categoriasList = [
    Categoria(name: "Aulas", image: "aulas.png"),
    Categoria(name: "Obras", image: "obras.jpg"),
    Categoria(name: "Pinturas", image: "pinturas.png"),
];
class Categorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriasList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: grey[50],
                        offset: Offset(4, 4),
                        blurRadius: 3)
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "imagens/${categoriasList[index].image}",
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Titulo(
                  text: categoriasList[index].name,
                  size: 20,
                  color: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}


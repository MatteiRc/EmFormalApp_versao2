import 'package:flutter/material.dart';
import 'package:flutter_app/scr/cores.dart';
import 'package:flutter_app/scr/modelos/categoria.dart';
import 'package:flutter_app/scr/widgets/categorias.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Titulo(
                    text: "Que serviço você está procurando ?",
                    size: 22,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.notifications_none,
                          size: 37,
                          color: tema,
                        ),
                        onPressed: () {}),
                    Positioned(
                      top: 13,
                      right: 7,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(Icons.search, color: tema),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Procurar Serviço", border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: tema,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categorias(),
            SizedBox(
              height: 20,
            ),
            Titulo(text: "Serviços", size: 20,)

          ],
        ),
      ),
    );
  }
}

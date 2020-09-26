import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/scr/cores.dart';
import 'package:flutter_app/scr/modelos/categoria.dart';
import 'package:flutter_app/scr/widgets/bottom_navigation_icons.dart';
import 'package:flutter_app/scr/widgets/categorias.dart';
import 'package:flutter_app/scr/widgets/featured_servico.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Titulo(text: "Serviços Recentes", size: 20, color: grey,),
            ),

            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Titulo(text: "Anuncios", size: 20, color: grey,),

            ),
            Stack(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("imagens/popular2.png"),),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavIcon(
                imagem: "home.png",
                nome: "home"
            ),
            BottomNavIcon(
                imagem: "home.png",
                nome: "home"
            ),
            BottomNavIcon(
                imagem: "user.png",
                nome: "Conta"
            ),
          ]
        ),
      ),
    );
  }
}

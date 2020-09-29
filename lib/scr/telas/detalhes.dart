import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/scr/modelos/servicos.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';

import '../helpers/cores.dart';

class Detalhes extends StatefulWidget {
  final Servico servico;

  Detalhes({@required this.servico});


  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset("imagens/${widget.servico.imagem}"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: black,),
                        onPressed: () {Navigator.pop(context);},
                      ),
                    ],
                  ),
             ]
              ) ),
            SizedBox(
              height: 15,
            ),
            Titulo(text: widget.servico.trabalho, size: 24, weight: FontWeight.bold,),
            Titulo(text: "\R\$" + widget.servico.preco.toString() + "/hora", size:20,),
            SizedBox(
              height: 15,
            ),
            //text
            Titulo(text: "aaaaaaaaaaaaaaaaaaaaaaaaaa", size:20,),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    print("Container clicked");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tema,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                      child: Titulo(text: "Conversar", color: white, size: 24, weight: FontWeight.w600,),


                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

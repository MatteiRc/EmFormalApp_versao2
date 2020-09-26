import 'package:flutter/material.dart';
import 'package:flutter_app/scr/modelos/servicos.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';

import '../cores.dart';

List<Servico> servicoList = [
  Servico(trabalho: "Pedreiro", preco: 5.59, nota: 4.2, nome: "Roberto", imagem: "1.jpg"),
  Servico(trabalho: "Professora Particular", preco: 5.59, nota: 4.2, nome: "Roberto", imagem: "2.jpg"),
  Servico(trabalho: "Encanador", preco: 5.59, nota: 4.2, nome: "Roberto", imagem: "3.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: servicoList.length,
          itemBuilder: (_, index){
            return Padding(padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
                child: Container(
                  height: 220,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: tema, offset: Offset(3, 3), blurRadius: 1)
                  ]),
                  child: Column(
                    children: <Widget>[
                          Image.asset("imagens/${servicoList[index].imagem}", height: 140,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 10),
                                child: Titulo(text: servicoList[index].trabalho ,size: 17,),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4,top: 10),
                                    child: Titulo(text: servicoList[index].nota.toString(),color: grey, size: 19,),
                                  ),
                                  SizedBox(width: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1,top: 10),
                                    child: Icon(Icons.star, color: yellow, size: 16,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1,top: 10),
                                    child: Icon(Icons.star, color: yellow, size: 16,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1,top:10),
                                    child: Icon(Icons.star, color: yellow, size: 16,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1,top:10),
                                    child: Icon(Icons.star, color: yellow, size: 16,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1,top:10),
                                    child: Icon(Icons.star, color: grey, size: 16,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 9,),
                                child: Titulo(text: "\R\$${servicoList[index].preco}", weight: FontWeight.bold,),),
                            ],
                          ),

                        ],
                      ),
                  ),
            );}),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';
class BottomNavIcon extends StatelessWidget {
  final String imagem;
  final String nome;

  const BottomNavIcon({Key key, this.imagem, this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset("imagens/$imagem", width: 26, height: 26,),
          SizedBox(height: 5,),
          Titulo(text: nome,)
        ],
      ),
    );
  }
}

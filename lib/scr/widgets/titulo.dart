import 'package:flutter/material.dart';
import '../cores.dart';

class Titulo extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  Titulo({@required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}

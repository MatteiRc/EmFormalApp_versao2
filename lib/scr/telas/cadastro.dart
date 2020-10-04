import 'package:flutter/material.dart';
import 'package:flutter_app/scr/helpers/cores.dart';
import 'package:flutter_app/scr/helpers/tela_navegador.dart';
import 'package:flutter_app/scr/telas/login.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';

class CadastroTela extends StatefulWidget {
  @override
  _CadastroTelaState createState() => _CadastroTelaState();
}

class _CadastroTelaState extends State<CadastroTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 94,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("imagens/logo.png"),
              ],
            ),
            SizedBox(
              height: 94,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: tema),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Nome",
                      icon: Icon(Icons.person, color: tema,),

                    ),
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: tema),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Senha",
                      icon: Icon(Icons.lock, color: tema,),

                    ),
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    color: tema,
                    border: Border.all(color: tema),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Titulo(text: "Cadastrar", color: white, size: 22,),
                    ],),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                changeScreen(context, LoginTela());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Titulo(text: "Login", size: 20,),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}

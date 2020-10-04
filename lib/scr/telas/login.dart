import 'package:flutter/material.dart';
import 'package:flutter_app/scr/helpers/cores.dart';
import 'package:flutter_app/scr/helpers/tela_navegador.dart';
import 'package:flutter_app/scr/telas/cadastro.dart';
import 'package:flutter_app/scr/widgets/titulo.dart';

class LoginTela extends StatefulWidget {
  @override
  _LoginTelaState createState() => _LoginTelaState();
}

class _LoginTelaState extends State<LoginTela> {
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
                    hintText: "Email",
                    icon: Icon(Icons.email, color: tema,),

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
                    Titulo(text: "Login", color: white, size: 22,),
                  ],),
              ),
            ),
            ),
            GestureDetector(
              onTap: (){
                changeScreen(context, CadastroTela());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Titulo(text: "Cadastre-se", size: 20,),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}

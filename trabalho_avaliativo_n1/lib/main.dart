import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Inicio(),
  ));
}
//Primeira Classe(Tela Inicio)
class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem Vindo!'),
      ),
      body: ListView(
          children: <Widget>[
        Card(
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset("imagens/capa.jpg"),
              ],
            ),),
        ),
            Text("Seja muito bem vindo ao nosso projeto (em andamento) sobre Animes, Desenhos e Rpg's!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.tealAccent)),
         Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Image.asset("imagens/emblema_esquerda.jpg"),
                Image.asset("imagens/emblema_centro.png"),
                Image.asset("imagens/emblema_direita.jpg"),
          ]),),
        //Botão Personagens (Leva para a tela Personagens)
        Card(
          child: ElevatedButton(
            child: Text('Vamos lá!'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Personagens()));
          },),
      ),],
      ),);
  }
}

//Segunda Classe(Tela Personagens)
class Personagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personagens"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Mapas'),
          ),
          ListTile(
            leading: Icon(Icons.add_business),
            title: Text('Lojas'),
          ),
          ListTile(
            leading: Icon(Icons.format_align_justify),
            title: Text('Magias'),
          ),
          Card(
            child: Container(
              child: Column(
                children: <Widget>[
                  Image.asset("imagens/imagem_fundo.jpeg"),
                ],),
            ),),
          //Botão Galeria (Leva para a tela Galeria)
          Card(
            child: ElevatedButton(
              child: Text('Venha ver nossa galeria de desenhos em andamento!'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Galeria()));
              },),),
          //Botão Voltar (Leva para a tela Inicio)
          Card(
            child: ElevatedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },),)
        ],),);
  }
}

//Terceira Classe(Tela Galeria)
class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset("imagens/personagemRPG.jpg"),
                ],),
            ),),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset("imagens/personagemRPG2.jpg"),
                ],),
            ),),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset("imagens/personagemRPG3.jpg"),
                ],),
            ),),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset("imagens/personagemRPG4.jpg"),
                ],),
            ),),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset("imagens/personagemRPG5.jpg"),
                ],),
            ),),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset("imagens/personagemRPG6.jpg"),
                ],),
            ),),
          //Botão Voltar (Leva para a tela Personagens)
          Card(
            child: ElevatedButton(
              child: Text("Voltar"),
                onPressed: () {
                  Navigator.pop(context);
              },),),
        ],),);
  }
}
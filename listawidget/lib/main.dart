import 'package:flutter/material.dart';
import 'package:listawidget/model/pessoa..dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Lista para Widget",
      home: Tela1(),
    );
  }
}

//WIDGET TELA UM
class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  List<Pessoa> lista = [
    Pessoa(nome: "Victor", idade: 37, sobrenome: "Alves", cpf: "12312312"),
    Pessoa(nome: "Fulano", idade: 22, sobrenome: "de Tal", cpf: "4833489434"),
    Pessoa(nome: "Fulano2", idade: 14, sobrenome: "de Tal", cpf: "4833489434"),
    Pessoa(nome: "Fulano3", idade: 18, sobrenome: "de Tal", cpf: "4833489434"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Lista para Widget"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: 
          //CRIANDO LISTVIEW
          ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return ElevatedButton(onPressed: (){}, child: Text(lista[index].nome));
              //=return Text(lista[index].nome);
            },
          )
       
    );
  }
}

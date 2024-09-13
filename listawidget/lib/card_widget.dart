import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
 
// ? = pode receber valor nulo
  final String nome;
  final String sobrenome;
  final Function() onRemove;

//Construtor
const CardWidget({
  required this.nome, 
  required this.sobrenome,
  required this.onRemove
});


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Column(
              children: [
                Text('$nome',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('$sobrenome',
                style: TextStyle(color: Colors.grey),
                
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
            ),
         ),
          IconButton(
          onPressed: (){
            onRemove();
          }, 
          icon: Icon(Icons.delete)
          ),
        ],
      ),
    );
  }
}
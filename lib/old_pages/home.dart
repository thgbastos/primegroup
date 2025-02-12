import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Project'),),
      body: Column(
        children: [
          //PRIMEIRA LINHA
          Container(
            color: Colors.amber,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 10),
            child: Image.asset('assets/images/muro.jpg'),
          ),
          //SEGUNDA LINHA
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16.0),
                      child: (
                        const Text('Kotel', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16.0),
                      child: const Text('Jerusalém, Israel', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),)
                    ),
                  ],
                )
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.star, color: Colors.blue,),
                      Text('3.891', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 40,),
          //TERCEIRA LINHA
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextButton(onPressed: () {}, child: const Icon(Icons.call),),
                  const Text('Ligar', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Column(
                children: [
                  TextButton(onPressed: () {}, child: const Icon(Icons.pin_drop),),
                  const Text('Endereço', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  TextButton(onPressed: () {}, child: const Icon(Icons.share),),
                  const Text('Compartilhar', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
          const SizedBox(height: 40,),
          //QUARTA LINHA
          Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: const Text('O Muro das Lamentações ou Muro Oriental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do Templo de Herodes, erguido por Herodes.')
          )
        ],
      )
    );
  }
}

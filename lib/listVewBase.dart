import 'package:flutter/material.dart';

class ListViewBase extends StatelessWidget {
  const ListViewBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  // Array com os nomes para teste
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'David'];

  //Lista de Objects para teste
  final List<Map<String, String>> contacts = [
    {'name': 'Alice', 'cargo': 'Secretaria'},
    {'name': 'Bob', 'cargo': 'Diretor'},
    {'name': 'Charlie', 'cargo': 'Secretaria'},
    {'name': 'David', 'cargo': 'Coordenador'}
  ];


    return Scaffold(
      appBar: AppBar(title: const Text('Contatos'),),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (ctx, index) {
          final contact = contacts[index]; //Quando usar lista de Objetos tem que fazer esta interpolação
          return ListTile(
            leading: const Icon(Icons.account_circle, size: 50),
            title: Text(contact['name'] ?? 'Sem nome'),
            subtitle: Text(contact['cargo'] ?? 'Sem cargo'),
            trailing: ElevatedButton(
              onPressed: (){}, 
              child: const Icon(Icons.call)
            ),
          );
        }
        ) 
    );
  }
}
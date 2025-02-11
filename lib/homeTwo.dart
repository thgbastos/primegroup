import 'package:flutter/material.dart';
import 'package:flutter3/appController.dart';
import '../listVewBase.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Megaconstruções'),
        actions: [
          Switch(
            value: AppController.instance.isDarkTheme, 
            onChanged: (value){
              AppController.instance.changeTheme();
            } 
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                accountName: Text('Thiago Bastos'),
                accountEmail: Text('thiagobastos@email.com')),
            MyListDrawer(
              iconItem: Icons.person,
              titleItem: 'Perfil',
            ),
            MyListDrawer(
              iconItem: Icons.settings,
              titleItem: 'Configurar Conta',
            ),
            MyListDrawer(
              iconItem: Icons.share,
              titleItem: 'Compartilhar',
            ),
            MyListDrawer(
              iconItem: Icons.exit_to_app,
              titleItem: 'Sair',
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/muro.jpg'),
          //SEGUNDA LINHA
          Container(
              padding: const EdgeInsets.all(16),
              //color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Kotel',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Jerusalém, Israel',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Text('3.891')
                    ],
                  )
                ],
              )),
          //TERCEIRA LINHA
          Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                ButtonBase(
                  onPressButtonBase: () {},
                  iconButtonBase: Icons.call,
                  textButtonBase: 'Ligar',
                ),
                ButtonBase(
                  onPressButtonBase: () {},
                  iconButtonBase: Icons.location_on,
                  textButtonBase: 'Endereço',
                ),
                ButtonBase(
                  onPressButtonBase: () {
                    //TESTE DE SNACKBAR
                    const snackBar = SnackBar(
                      content: Text('Compartilhando...')
                      );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  iconButtonBase: Icons.share,
                  textButtonBase: 'Compartilhar',
                ),
                ButtonBase(
                  onPressButtonBase: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ListViewBase()));
                  },
                  iconButtonBase: Icons.account_circle_sharp,
                  textButtonBase: 'Contatos',
                )
              ],
            ),
          ),
          //QUARTA LINHA
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: const Expanded(
                    child: Text(
                        'O Muro das Lamentações ou Muro Oriental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do Templo de Herodes, erguido por Herodes.'),
                  ),
                ),
                //QUINTA LINHA - TESTE
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: const [
                      Flexible(
                        child: Card(
                          child: ListTile(
                            leading: FlutterLogo(),
                            title: Text('Meu título (teste)'),
                            subtitle: Text('Subtítulo (teste)'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: const [
                      Flexible(
                        child: Card(
                          child: ListTile(
                            leading: FlutterLogo(),
                            title: Text('Meu título (teste)'),
                            subtitle: Text('Subtítulo (teste)'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//COMPONENTE DOS BOTÕES
class ButtonBase extends StatelessWidget {
  const ButtonBase(
      {Key? key,
      this.onPressButtonBase,
      required this.iconButtonBase,
      required this.textButtonBase})
      : super(key: key);

  final VoidCallback? onPressButtonBase;
  final IconData iconButtonBase;
  final String textButtonBase;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed: onPressButtonBase,
          child: Column(
            children: [Icon(iconButtonBase), Text(textButtonBase)],
          )),
    );
  }
}

//COMPONENTE DO DRAWER LIST
class MyListDrawer extends StatelessWidget {
  
  const MyListDrawer ({Key? key,
    required this.iconItem,
    required this.titleItem,
  }) : super(key: key);

    final IconData iconItem;
    final String titleItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconItem, size: 25),
      title: Text(titleItem),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}

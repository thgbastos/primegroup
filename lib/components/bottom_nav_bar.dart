import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedIndex = 0; // Índice da aba selecionada

  // Função para mudar de aba - Menu Rodapé
  void _onItemTapped(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushReplacementNamed(context, '/home');
      break;
    case 1:
      Navigator.pushReplacementNamed(context, '/search');
      break;
    case 2:
      Navigator.pushReplacementNamed(context, '/booking');
      break;
    case 3:
      Navigator.pushReplacementNamed(context, '/profile');
      break;
  }
}

  @override
  Widget build(BuildContext context) {
    
    //Verificar qual página está para mudar a cor de fundo da NavBottomBar
    String? currentRoute = ModalRoute.of(context)?.settings.name; //Obtendo a rota atual
    Color customBackgroundColor = currentRoute == '/home' ? Colors.white : const Color(0xff226690);
    BorderRadius customBorderRadius = currentRoute == '/home'
      ? const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      : BorderRadius.zero;
    BoxShadow customBoxShadow = currentRoute == '/home'
      ? const BoxShadow(
              color: Colors.black26, // Sombra para destacar a barra
              blurRadius: 5,
              spreadRadius: 1,
            )
      : BoxShadow();




    return Container(
      decoration: BoxDecoration(
        color: customBackgroundColor, // Cor de fundo da barra
        borderRadius: customBorderRadius,
        boxShadow: [customBoxShadow], // Arredondamento opcional
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),

        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xff226690), // Cor do item selecionado
          unselectedItemColor: Colors.grey, // Cor dos itens não selecionados
          onTap: (index) => _onItemTapped(context, index), // Atualiza o índice ao clicar
        ),
      )
    );
  }
}
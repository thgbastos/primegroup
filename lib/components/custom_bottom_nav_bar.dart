import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

  int _selectedIndex = 0; // Índice da aba selecionada
  
  // Função para mudar de aba
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white, // Cor de fundo da barra
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), // Arredonda o canto superior esquerdo
            topRight: Radius.circular(20), // Arredonda o canto superior direito
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26, // Sombra para destacar a barra
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
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
          selectedItemColor: Color(0xff226690), // Cor do item selecionado
          unselectedItemColor: Colors.grey, // Cor dos itens não selecionados
          onTap: _onItemTapped, // Atualiza o índice ao clicar
        ),
      )
    );
  }
}
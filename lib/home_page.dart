import 'package:flutter/material.dart';
import 'services/ServiceDetailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0; // Índice da aba selecionada

  final List<Map<String, String>> services = [
    {'service': 'Eletric', 'img': 'assets/images/eletric.webp', 'description': 'Our skilled electricians are here to handle all your electrical needs, from installations to repairs, ensuring safety and efficiency in every project.'},
    {'service': 'Plumber', 'img': 'assets/images/plumber.webp', 'description' : 'From fixing leaks to installing new systems, our plumbing experts deliver reliable solutions for your home or business.'},
    {'service': 'Cleaner', 'img': 'assets/images/cleaner.webp', 'description' : 'Keep your home spotless with our professional house cleaning services, offering thorough cleaning tailored to your needs and schedule.'},
    {'service': 'Paint', 'img': 'assets/images/paint.jpg', 'description' : 'Transform your spaces with our professional painting services, providing flawless finishes and vibrant colors tailored to your style.'},
    {'service': 'Roof', 'img': 'assets/images/roof.jpg', 'description' : 'Protect your home with our roofing services, including repairs, maintenance, and installations designed for durability and quality.'},
    {'service': 'Pool', 'img': 'assets/images/pool.jpeg', 'description' : 'Our pool experts provide maintenance, cleaning, and repair services to keep your pool crystal clear and ready for use year-round.'},
  ];

  // Função para mudar de aba
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Home Page'),),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Seção do perfil do usuário
            Row(
              children: [
                // Foto de perfil redonda
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/user.webp'), // Substitua pelo caminho da imagem do usuário
                ),
                const SizedBox(width: 12), // Espaçamento entre a imagem e o texto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Neymar Júnior',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff226690),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Free Plan',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                // Ícone de notificações
                const Icon(Icons.notifications),
              ],
            ),
            const SizedBox(height: 40),

            // Card sem sombra e com cor de fundo levemente diferente
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100], // Cor de fundo suave
                borderRadius: BorderRadius.circular(8), // Bordas levemente arredondadas
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'What are you looking for?',
                    style: TextStyle(fontSize: 16, color: Color(0xff226690)),
                  ),
                  SizedBox(height: 8), // Espaçamento menor
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Search here',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)), // Bordas discretas
                        borderSide: BorderSide.none, // Remove a borda padrão
                      ),
                      fillColor: Colors.white, // Fundo branco para o campo de texto
                      filled: true, // Ativa a cor de fundo no campo
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Recomended', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff226690)
                  ),
                ),
                Text('See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                )
              ],
            ),

            const SizedBox(height: 5),

            //LISTA DE SERVIÇOS
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 itens por linha
                  crossAxisSpacing: 10, // Espaçamento entre as colunas
                  mainAxisSpacing: 10, // Espaçamento entre as linhas
                  childAspectRatio: 1 / 1.5, // Proporção da altura e largura dos itens
                ),
                itemCount: services.length, // Usa o comprimento do array
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: (() {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceDetailPage(
                                    serviceName: services[index]['service']!, // Nome do serviço
                                    serviceImage: services[index]['img']!, // Caminho da imagem
                                    serviceDescription: services[index]['description']!, // Descrição do serviço
                                  ),
                                ),
                              );
                    }),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Bordas arredondadas
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // Cor de fundo caso a imagem não seja carregada
                        ),
                        child: Column(
                          children: [
                            // Imagem do serviço
                            Expanded(
                              child: Image.asset(
                                services[index]['img']!, // Usa a imagem do serviço
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            // Rodapé com o nome do serviço
                            Container(
                              color: const Color(0xff226690), // Cor sólida de fundo para o nome do serviço
                              padding: const EdgeInsets.all(8),
                              width: double.infinity, // Garante que o fundo ocupe toda a largura do item
                              child: Text(
                                services[index]['service']!, // Exibe o nome do serviço
                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      //Barra de navegação de rodapé
      bottomNavigationBar: Container(
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
    )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter3/components/bottom_nav_bar.dart';

class ServiceDetailPage extends StatefulWidget {
  final String serviceName;
  final String serviceImage;
  final String serviceDescription;

  const ServiceDetailPage({
    Key? key,
    required this.serviceName,
    required this.serviceImage,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  State<ServiceDetailPage> createState() => _ServiceDetailPageState();
}

class _ServiceDetailPageState extends State<ServiceDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Foto do serviço ocupando quase toda a tela
          Positioned.fill(
            child: Image.asset(
              widget.serviceImage,
              fit: BoxFit.cover,
            ),
          ),
          // Area da descrição do serviço
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4, // Altura da área
              decoration: const BoxDecoration(
                color: Color(0xff226690),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Nome do serviço
                    Text(
                      widget.serviceName,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    // Descrição do serviço
                    Text(
                      widget.serviceDescription,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 25,),

                    //Botão Get Started
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8, // Largura do botão,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          )
                        ),
                        onPressed: (){}, 
                        child: const Text('Get Started', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                        ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      //Barra de Navegação de Rodapé
      bottomNavigationBar: const BottomNavBar()
    );
  }
}

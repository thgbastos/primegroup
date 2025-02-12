import 'package:flutter/material.dart';
import 'package:flutter3/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('./assets/images/background.jpg'), // Sua imagem
            fit: BoxFit.cover, // Faz a imagem cobrir toda a tela
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox( height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centraliza a imagem
                  children: [
                    Image.asset('./assets/images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.8, // 30% da largura da tela
                    ),
                    
                  ],
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Login',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xff226690),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),)
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 16,),
                Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ]
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          const Text('Remember me',
                          style: TextStyle(color: Color(0xff226690)),)
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Text('Forgot password?',
                        style: TextStyle(
                          color: Color(0xff226690)
                        ),)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/home');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF226690), // Cor personalizada
                          ),
                          child: const Text('Login',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ),
                  ]
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Don\'t have an account? ', style: TextStyle(
                      color: Color(0xff226690)
                    ),),
                    Text(' Sign Up', style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold, 
                      color: Color(0xff226690)))
                  ],
                )
              ],
            ),
          ),
        ),
      ) 
    );
  }
}

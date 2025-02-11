import 'package:flutter/material.dart';
import 'package:flutter3/appController.dart';
import 'package:flutter3/homeTwo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          title: 'First App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light),
          home: HomeTwo(),
        );
      },
    );
  }
}
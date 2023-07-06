import 'package:flutter/material.dart';
import 'package:netflix_app/inicio.dart';

void main() {
  runApp(const MyApp());
}

//* Tittle class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: InicioPage());
  }
}

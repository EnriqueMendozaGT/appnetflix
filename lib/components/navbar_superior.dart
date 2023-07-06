import 'package:flutter/material.dart';

void main() => runApp(const NavbarSuperior());

class NavbarSuperior extends StatelessWidget {
  const NavbarSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/imgs/logonet.png',
          width: 50,
          height: 50,
        ),
        const Text(
          'Programas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Text(
          'Peliculas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Text(
          'Mi lista',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

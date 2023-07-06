import 'package:flutter/material.dart';
import 'package:netflix_app/components/carte_principal.dart';

void main() => runApp(const InicioPage());

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[CartelPrincipal()],
        ));
  }
}

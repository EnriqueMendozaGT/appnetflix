import 'package:flutter/material.dart';
import 'package:netflix_app/components/carte_principal.dart';
import 'package:netflix_app/components/item_redondeado.dart';

void main() => runApp(const InicioPage());

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            const CartelPrincipal(),
            listaHorizontal(),
          ],
        ));
  }

  Widget listaHorizontal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          child: Text(
            "Avances",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ItemRedondeado(),
              ItemRedondeado(),
              ItemRedondeado(),
              ItemRedondeado(),
              ItemRedondeado(),
              ItemRedondeado(),
            ],
          ),
        ),
      ],
    );
  }
}

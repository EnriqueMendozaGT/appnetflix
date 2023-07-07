import 'package:flutter/material.dart';
import 'package:netflix_app/components/navbar_superior.dart';

void main() => runApp(const CartelPrincipal());

class CartelPrincipal extends StatelessWidget {
  const CartelPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        cabecera(),
        infoSerie(),
        botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://estaticos-cdn.elperiodico.com/clip/50656625-0f4a-4942-a1fd-34aa87df3466_alta-libre-aspect-ratio_default_0.jpg',
          height: 350,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.black38,
                Colors.black,
              ])),
        ),
        const SafeArea(
          child: NavbarSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelesco',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(width: 6),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        Text(
          'Suspenso insostenible',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(width: 6),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        Text(
          'De suspenso',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(width: 6),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        Text(
          'Adolesentes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Column(
              children: <Widget>[
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Mi lista",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
            TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: const Text(
                "Reproducir",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const Column(
              children: <Widget>[
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Info",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ],
        ));
  }
}

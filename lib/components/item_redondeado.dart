import 'package:flutter/material.dart';

void main() => runApp(const ItemRedondeado());

class ItemRedondeado extends StatelessWidget {
  const ItemRedondeado({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 2,
                  )),
              child: ClipOval(
                child: Image.network(
                  'https://wallpapercave.com/wp/wp4268828.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/imgs/avengergersbanner.png',
              width: 100,
            )
          ],
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}

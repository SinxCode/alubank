import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Criando degradê no container
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(103, 99, 234, 1.0),
            Color.fromRGBO(155, 105, 254, 1.0),
            Color.fromRGBO(195, 107, 255, 1.0),
          ]
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
      child:  Padding(
        //Padding from LTRB significa left, top, right e bottom nessa ordem
        padding: EdgeInsets.fromLTRB(16, 80, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   '\$1000.00',
                //   style: TextStyle(
                //     fontSize: 28,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                //Serve para estilizar parágrafos
                Text.rich(
                  TextSpan(
                    text: '\$',
                    children: [
                      TextSpan(
                        text: '1000.00',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Balanço disponível',
                )
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}

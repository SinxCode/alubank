import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return 
      //O INK tem a mesma função de um container, contudo ele dirá para o Inkwell que o efeito de "click" irá acontecer sobrepondo o INK. 
      //(Caso utilizassemos o Container o efeito ficaria atrás do container e não seria possível visualizar)
      Ink(
      child: boxContent,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor
      ),
      padding: const EdgeInsets.all(16),
    );
  }
}
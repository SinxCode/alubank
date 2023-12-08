import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/sections/box_card.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:alubank/themes/themes_color.dart';
import 'package:flutter/material.dart';
import 'package:alubank/components/content_division.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          RecentActivity(),
        ],
      ),

    );
  }
} 

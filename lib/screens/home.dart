import 'package:basta3rd/screens/questions.dart';
import 'package:flutter/material.dart';

import '../components/title_home.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool toPlay = false;

  void startPlay() {
    setState(() {
      toPlay = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: toPlay ? Questions() : TitleHome(startPlay),
    );
  }
}

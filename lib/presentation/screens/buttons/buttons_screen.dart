import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'bottons_screen'; 
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottons Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
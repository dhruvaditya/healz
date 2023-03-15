import 'package:flutter/material.dart';

class Healz extends StatefulWidget {
  const Healz({super.key});

  @override
  State<Healz> createState() => _HealzState();
}

class _HealzState extends State<Healz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Scaffold(
        backgroundColor: Color.fromARGB(255, 5, 87, 72),
        body: Center(
          child: Image(image: AssetImage('graphics/background.png')),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DisbaledCallPage extends StatelessWidget {
  const DisbaledCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Disabled Call Page",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

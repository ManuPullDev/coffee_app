import 'package:flutter/material.dart';

class DeadPage extends StatelessWidget {
  const DeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Boom"),
      ),
    );
  }
}

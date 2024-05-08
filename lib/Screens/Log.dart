// ignore_for_file: file_names

import 'package:coffee_app/Screens/login.dart';
import 'package:coffee_app/Screens/onbording.dart';
import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 230, 230),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            // Redirection vers une autre page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OnboardingPage()),
            );
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(children: [
          LoginPage(),
        ]),
      ),
    );
  }
}

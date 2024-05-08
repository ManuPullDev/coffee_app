import 'package:coffee_app/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Utilisez un Timer pour déclencher la navigation après 3 secondes
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 53, 52, 52),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Online_Shoping_29-removebg-preview 1.png",
              width: 350,
            ),
            const SizedBox(height: 30),
            const Text(
              """Choose your best 
  Delicious cofee only!""",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Lottie.network(
              "https://lottie.host/dcb7db90-27d5-426b-8e4b-5d39fd6ac9b9/twVCijCwyP.json",
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

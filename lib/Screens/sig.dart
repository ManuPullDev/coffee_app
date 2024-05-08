//import 'package:coffee_app/Screens/Log.dart';
import 'package:coffee_app/Screens/sigin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigPage extends StatelessWidget {
  const SigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 230, 230),
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.down,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 30,),
                child: const SignInPage()),
            ],
          ),
        ),
      ),
    );
  }
}

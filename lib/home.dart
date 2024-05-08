import 'package:coffee_app/Screens/onbording.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/grains-cafe-fond-removebg-preview 1.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 400.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white, Colors.white.withOpacity(0)],
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              16), // Ajustez la valeur selon vos besoins
                      child: Text(
                        "Welcome to CoffeeShop!",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              16), // Ajustez la valeur selon vos besoins
                      child: Text(
                        "Don’t worry we are here to give to save hunger problem",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 110),
                    AnimatedButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _textOpacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 4).animate(_controller);
    _textOpacity = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5), // Adjust the interval as needed
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _controller.forward();
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingPage(),
            ),
          );
        });
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(2.0),
        backgroundColor: const Color.fromARGB(255, 82, 50, 2),
      ),
      child: Ink(
        child: SizedBox(
          width: 270,
          height: 60,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(50 * _animation.value, 0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 7.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: AnimatedBuilder(
                  animation: _textOpacity,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _textOpacity.value,
                      child: Container(
                        margin: const EdgeInsets.only(left: 25.0),
                        child: const Text(
                          "Get Started...!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

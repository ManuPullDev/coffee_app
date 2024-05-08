import 'package:coffee_app/Screens/Log.dart';
import 'package:coffee_app/Screens/content_model.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  // Clé (key) doit être passée au constructeur super, correction de la syntaxe
  const OnboardingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // Indice de la page actuelle
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // Initialiser le PageController avec initialPage réglé sur 0
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // Libérer le PageController pour éviter les fuites de mémoire
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              // Fonction de rappel pour le changement de page
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                // Widget pour chaque page dans le PageView
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 300,
                      ),
                      const SizedBox(height: 90),
                      Text(
                        contents[i].title,
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          // Points indiquant la page actuelle
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, currentIndex, context),
            ),
          ),
          // Bouton Continuer/Suivant
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                // Si sur la dernière page, naviguer vers la page de connexion
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LogPage(),
                    ),
                  );
                }
                // Sinon, passer à la page suivante
                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                currentIndex == contents.length - 1 ? "Continuer" : "Suivant",
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget pour les points indiquant la page actuelle
  Container buildDot(int index, int currentPage, BuildContext context) {
    bool isCurrentPage = index == currentPage;
    bool isBeforeCurrentPage = index < currentPage;

    return Container(
      height: 10,
      width: isCurrentPage ? 40 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isCurrentPage
            ? Colors.green
            : (isBeforeCurrentPage ? Colors.grey : Colors.grey),
      ),
    );
  }
}

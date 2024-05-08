import 'package:flutter/material.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
          child: Row(
            children: [
              const InkWell(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 240, 236, 236),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DELIVER TO',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Halal Lab office',
                                style: TextStyle(
                                  color: Color(0xFF212121),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(width: 2), // Ajouter un espace entre le texte et l'icône
                              Icon(
                                Icons.arrow_drop_down_rounded,
                                color: Colors.black,
                                size: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                iconSize: 30,
                icon: const Icon(Icons.shopping_bag),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 80.0), // Ajustez la marge selon vos besoins
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Hey Halal, ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: 'Good Afternoon!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

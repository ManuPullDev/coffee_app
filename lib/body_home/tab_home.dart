import 'package:coffee_app/home2.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/body_home/categories_wid.dart';
import 'package:coffee_app/body_home/fast_deliver.dart';
import 'package:coffee_app/body_home/popular_items.dart';
import 'package:coffee_app/body_home/special_offer.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Column(
            children: [
              HomeHead(),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CategoriesWidgets(),
                      SizedBox(height: 25),
                      SpecialsOffers(),
                      SizedBox(height: 25),
                      FastestDelivery(),
                      SizedBox(height: 25),
                      StainSectionList2()
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

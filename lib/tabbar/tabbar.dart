import 'package:coffee_app/body_home/tab_home.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/pages/card.dart';
import 'package:coffee_app/pages/orders.dart';
import 'package:coffee_app/pages/profile.dart';

class TabBarItem {
  final IconData iconData;
  final String label;

  TabBarItem({
    required this.iconData,
    required this.label,
  });

  BottomNavigationBarItem buildItem(bool isSelected) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        color: isSelected ? Colors.black : Colors.grey,
        size: isSelected ? 24 : 20,
      ),
      label: label,
    );
  }
}

class FRTabBarScreen extends StatefulWidget {
  const FRTabBarScreen({Key? key}) : super(key: key);

  @override
  State<FRTabBarScreen> createState() => _FRTabBarScreenState();
}

class _FRTabBarScreenState extends State<FRTabBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
   HomeScreen(),
    CardPage(),
    OrdersPage(),
    ProfilePage(),
  ];

  final List<TabBarItem> _tabBarItems = [
    TabBarItem(
      iconData: Icons.home,
      label: 'Home',
    ),
    TabBarItem(
      iconData: Icons.explore_rounded,
      label: 'Cart',
    ),
    TabBarItem(
      iconData: Icons.local_mall,
      label: 'Orders',
    ),
    TabBarItem(
      iconData: Icons.person,
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabBarItems
            .map((item) => item.buildItem(_selectedIndex == _tabBarItems.indexOf(item)))
            .toList(),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        iconSize: 24,
      ),
    );
  }
}

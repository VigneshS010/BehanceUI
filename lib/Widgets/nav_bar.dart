import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,

      onTap: (int index){
        setState(() {
          _selectedIndex = index;
        });
      },

      showSelectedLabels: false,

      showUnselectedLabels: false,
      
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.messenger_outline_rounded),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_sharp),label: ""),
      ],
    );
  }
}
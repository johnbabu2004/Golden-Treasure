 import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1661088361.
          backgroundColor: Colors.brown,
         
          icon: Icon(Icons.home),
          label: 'Home',
        ),
         BottomNavigationBarItem(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1661088361.
          backgroundColor: Colors.brown,
          icon: Icon(Icons.menu_book_outlined),
          label: 'Catalog',
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.brown,

          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.brown,
          icon: Icon(Icons.notifications_outlined),
          label: 'Notifications',
          
        ),
        BottomNavigationBarItem(
        backgroundColor: Colors.brown,
        icon: Icon(Icons.person),
        label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      onTap: onItemTapped,
    );
  }
}
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xff232227),
      currentIndex: 2,
      showUnselectedLabels: false,
      useLegacyColorScheme: false,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.mail,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: ""),
      ],
    );
  }
}

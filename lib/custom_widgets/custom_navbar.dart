import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s2s_radionica/utils/global_colors.dart';

class Navbar extends StatefulWidget {
  final int currentIndex;
  const Navbar({super.key, required this.currentIndex});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;

  onIndexChanged(int index) {
    
    setState(() {
      selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/details');
        break;
      case 2:
        context.go('/home');
        break;
      case 3:
        context.go('/');
        break;
      default:
        context.go('/');
    }
  }

  @override
  void initState() {
    selectedIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: <Icon>[
        Icon(
          Icons.home,
          size: 30,
          color: selectedIndex == 0 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.travel_explore,
          size: 30,
          color: selectedIndex == 1 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.forest,
          size: 30,
          color: selectedIndex == 2 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.logout,
          size: 30,
          color: selectedIndex == 3 ? Colors.white : Colors.black,
        )
      ],
      index: selectedIndex,
      color: GlobalColors.darkGreen,
      height: 55,
      backgroundColor: Colors.transparent,
      onTap: (index) => {onIndexChanged(index)},
    );
  }
}

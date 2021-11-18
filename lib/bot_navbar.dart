// ignore_for_file: deprecated_member_use

import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:gbwa_clone/floating_navbar/camera.dart';
// import 'package:gbwa_clone/floating_navbar/pages_one.dart';
import 'floating_navbar/pages_four.dart';
// import 'floating_navbar/pages_one.dart';
import 'floating_navbar/pages_three.dart';
import 'floating_navbar/pages_two.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      color: Colors.greenAccent.shade700,
      selectedIconColor: Colors.white,
      unselectedIconColor: Colors.white.withOpacity(0.6),
      items: [
        FloatingNavBarItem(
            iconData: Icons.camera_alt_outlined,
            page: const AccessCameraPage(),
            title: 'Status'),
        FloatingNavBarItem(
            iconData: Icons.chat_bubble_outline_outlined,
            page: const PageTwo(),
            title: 'Chatt'),
        FloatingNavBarItem(
            iconData: Icons.group_add_outlined,
            page: const PageThree(),
            title: 'Group'),
        FloatingNavBarItem(
            iconData: Icons.call_end_outlined,
            page: const PageFour(),
            title: 'Call'),
      ],
      horizontalPadding: 12,
      hapticFeedback: true,
      showTitle: true,
    );
  }
}

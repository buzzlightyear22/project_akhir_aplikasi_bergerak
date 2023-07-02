import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:the_wall_uts_ardiansyah/pages/notification_page.dart';
import 'package:the_wall_uts_ardiansyah/pages/post_page.dart';
import 'package:the_wall_uts_ardiansyah/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;

  final screens = const [
    NotificationPage(),
    PostPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.notifications,
        color: Colors.white,
      ),
      const Icon(
        Icons.home,
        color: Colors.white,
      ),
      const Icon(
        Icons.settings,
        color: Colors.white,
      )
    ];
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.redAccent.shade700,
        animationDuration: const Duration(milliseconds: 300),
        height: 60,
        items: items,
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}

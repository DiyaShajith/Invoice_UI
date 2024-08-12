import 'package:flutter/material.dart';
import 'package:invoice_ui/view/profile_view/profile.dart';

import 'homepage/trials_page.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  List views = [const TrialsPage(), const Profile()];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (value) => setState(() {
                currentindex = value;
              }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}

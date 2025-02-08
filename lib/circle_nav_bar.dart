import 'package:flutter/material.dart';
import 'package:my_app/destination.dart';
import 'package:my_app/edit_profile.dart';
import 'package:my_app/home_page.dart';

class CircleNavBar extends StatefulWidget {
  const CircleNavBar({super.key});

  @override
  State<CircleNavBar> createState() => _CircleNavBarState();
}

class _CircleNavBarState extends State<CircleNavBar> {
  late final List<Widget> _pages;
  int _index = 0; // Utilisez un nom de variable plus descriptif pour l'index

  @override
  void initState() {
    super.initState();
    _pages = [const HomePage(), const Destination(), const EditProfile()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _pages[_index], // Affiche la page sélectionnée en fonction de l'index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index, // L'index actuel sélectionné
        onTap: (index) {
          setState(() {
            _index = index; // Change l'index lors de la sélection d'un élément
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Icône de la page d'accueil
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), // Icône pour explorer (Explore)
            label: 'wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Icône de profil
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

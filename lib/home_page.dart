import 'package:flutter/material.dart';
import 'package:my_app/Activities.dart';
import 'package:my_app/Shopping.dart';
import 'package:my_app/app_theme.dart';
import 'package:my_app/food.dart';
import 'package:my_app/hotel.dart';
import 'package:my_app/musem.dart';
import 'package:my_app/transport.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTitleFrame(),
              buildCategoriesSection(context),
            ],
          ),
        ),
      ),
    );
  }

  // Titre avec cadre décoré
  Widget _buildTitleFrame() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 252, 222, 252), // Fond coloré
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: Offset(0, 4), // Ombre
            ),
          ],
        ),
        child: Text(
          'Welcome to TravelImate!',
          style: TextStyle(
            color: Colors.deepPurple, // Couleur du texte
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Fonction pour construire les catégories avec navigation
Widget buildCategoriesSection(BuildContext context) {
  final categories = [
    {
      'title': 'Hôtels',
      'icon': Icons.hotel,
      'color': const Color.fromARGB(255, 101, 158, 255),
      'page': HotelsPage(),
    },
    {
      'title': 'Musées',
      'icon': Icons.museum,
      'color': Colors.orangeAccent,
      'page': MuseumsPage(),
    },
    {
      'title': 'Activités',
      'icon': Icons.sports,
      'color': const Color.fromARGB(255, 92, 209, 152),
      'page': ActivitiesPage(),
    },
    {
      'title': 'Food',
      'icon': Icons.restaurant,
      'color': Colors.redAccent,
      'page': FoodPage(),
    },
    {
      'title': 'Shopping',
      'icon': Icons.shopping_bag,
      'color': Colors.pinkAccent,
      'page': ShoppingPage(),
    },
    {
      'title': 'Transport',
      'icon': Icons.directions_bus,
      'color': Colors.amber,
      'page': TransportPage(),
    },
  ];

  return GridView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // 2 colonnes pour un affichage équilibré
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 15.0,
      childAspectRatio: 1.5,
    ),
    itemCount: categories.length,
    itemBuilder: (context, index) {
      final category = categories[index];
      return GestureDetector(
        onTap: () {
          // Naviguer vers la page correspondante
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => category['page'] as Widget),
          );
        },
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: category['color'] as Color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  category['icon'] as IconData,
                  size: 40.0,
                  color: Colors.white,
                ),
                SizedBox(height: 10.0),
                Text(
                  category['title'] as String,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

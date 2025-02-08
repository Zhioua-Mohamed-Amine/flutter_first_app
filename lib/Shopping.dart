import 'package:flutter/material.dart';

import 'app_theme.dart'; // Importation de la classe AppTheme

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent, // Couleur de l'AppBar en pinkAccent
        title: Text('Shopping'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30.0), // Espace de 30px après l'AppBar
        child: ListView(
          children: [
            _buildShoppingCard(
              'Azur City',
              'Centre commercial moderne avec des boutiques de luxe.',
              'assets/azur.webp',
            ),
            _buildShoppingCard(
              'Mall Of Sousse',
              'Grand centre commercial avec des marques internationales.',
              'assets/Mall-Of-Sousse-8.jpg',
            ),
            _buildShoppingCard(
              'Tunisia Mall',
              'Le plus grand centre commercial de la région.',
              'assets/tunisia_mall.jpeg',
            ),
            _buildShoppingCard(
              'Manar City',
              'Grand centre commercial à Tunis.',
              'assets/manarCity.jpg',
            ),

            // Ajoutez d'autres cartes de shopping ici
          ],
        ),
      ),
    );
  }

  Widget _buildShoppingCard(
      String title, String description, String imagePath) {
    return Center(
      // Centrer la carte horizontalement
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        elevation: 5,
        shadowColor: AppTheme.boxShadow.color, // Ombre portée
        shape: RoundedRectangleBorder(
          borderRadius: AppTheme.borderRadius, // Bordures arrondies
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200, // Fixer une hauteur uniforme pour toutes les images
              width: double.infinity, // Largeur maximale
              child: Image.asset(imagePath,
                  fit: BoxFit.cover), // Image redimensionnée
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryColor, // Couleur du titre
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(description),
            ),
          ],
        ),
      ),
    );
  }
}

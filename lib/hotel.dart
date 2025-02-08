import 'package:flutter/material.dart';

import 'app_theme.dart'; // Importation du thème global

class HotelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(
            255, 101, 158, 255), // Couleur personnalisée pour l'AppBar
        title: Text('Hôtels'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30.0), // Espace de 30px après l'AppBar
        child: ListView(
          children: [
            _buildHotelCard(
              'Hôtel Four Seasons Tunis',
              'Un hôtel de luxe avec des services de classe mondiale.',
              'assets/four-seasons-hotel-tunis.jpg', // Remplacez par le chemin de votre image
            ),
            _buildHotelCard(
              'Hôtel Iberostar Kuriat',
              'Un hôtel tout compris situé en bord de mer, parfait pour des vacances relaxantes.',
              'assets/iberostar-selection-kuriat.jpg', // Remplacez par le chemin de votre image
            ),
            _buildHotelCard(
              'Hôtel Marhaba Sousse',
              'Un hôtel familial situé dans la ville côtière de Sousse, avec des animations et des activités.',
              'assets/marhaba_soussa.webp', // Remplacez par le chemin de votre image
            ),
            _buildHotelCard(
              'Hôtel Dar El Bibine',
              'Un hôtel traditionnel avec une vue magnifique sur la mer.',
              'assets/dar-bibine.jpg', // Remplacez par le chemin de votre image
            ),
            // Ajoutez d'autres cartes d'hôtels ici
          ],
        ),
      ),
    );
  }

  Widget _buildHotelCard(String title, String description, String imagePath) {
    return Center(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        elevation: 5,
        shadowColor: AppTheme.boxShadow.color, // Ombre portée de notre thème
        shape: RoundedRectangleBorder(
          borderRadius: AppTheme.borderRadius, // Bordures arrondies
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:
                  200, // Fixe la hauteur de l'image pour que toutes les cartes aient la même taille
              width: double.infinity, // Largeur à 100% de l'écran
              child: Image.asset(imagePath,
                  fit: BoxFit
                      .cover), // L'image prend toute la largeur et hauteur
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

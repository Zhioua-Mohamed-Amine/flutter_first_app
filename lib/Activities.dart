import 'package:flutter/material.dart';

import 'app_theme.dart'; // Importation de la classe AppTheme

class ActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color.fromARGB(255, 92, 209, 152), // Couleur personnalisée
        title: Text('Activités'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0), // Espace après l'AppBar
        child: ListView(
          children: [
            _buildActivityCard(
              'Visite du Parc National de l\'Ichkeul',
              'Explorez la faune et la flore uniques du parc national, classé au patrimoine mondial de l\'UNESCO.',
              'assets/ichkeul170919-09.jpg',
            ),
            _buildActivityCard(
              'Visite Carthage Land',
              'Amusez-vous dans le parc à thème Carthage Land, offrant des attractions pour toute la famille.',
              'assets/carthage-land-tunis_296.jpg',
            ),
            _buildActivityCard(
              'Visite Jumpark',
              'Découvrez les diverses attractions du Jumpark, un lieu idéal pour les amateurs de loisirs et d\'aventures.',
              'assets/Jumpark_1.jpg',
            ),
            _buildActivityCard(
              'Visite City Des Sciences',
              'Plongez dans l\'univers de la science avec des expositions interactives à la Cité des Sciences.',
              'assets/cite-des-sciences.webp',
            ),
            // Ajoutez d'autres cartes d'activités ici
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard(
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

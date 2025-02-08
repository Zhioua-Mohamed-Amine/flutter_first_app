import 'package:flutter/material.dart';

import 'app_theme.dart'; // Importation de la classe AppTheme

class TransportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber, // Couleur de l'AppBar en amber
        title: Text('Transport'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30.0), // Espace de 30px après l'AppBar
        child: ListView(
          children: [
            _buildTransportCard(
              'Taxi',
              'Prenez un taxi pour une solution de transport rapide et pratique.',
              'assets/le-premier-taxi-100-electrique-en-tunisie-est-un-byd-2533_min.jpg', // Remplacez par le chemin de votre image
            ),
            _buildTransportCard(
              'Bus Interurbain',
              'Voyagez confortablement à travers la Tunisie avec notre réseau de bus.',
              'assets/Transtu-Bus.jpg', // Remplacez par le chemin de votre image
            ),
            _buildTransportCard(
              'Train',
              'Découvrez la Tunisie en train avec une vue panoramique agréable.',
              'assets/train-electrique.webp', // Remplacez par le chemin de votre image
            ),
            // Ajoutez d'autres cartes de transport ici
          ],
        ),
      ),
    );
  }

  Widget _buildTransportCard(
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

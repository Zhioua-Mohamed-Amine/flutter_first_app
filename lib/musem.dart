import 'package:flutter/material.dart';

import 'app_theme.dart'; // Importation de la classe AppTheme

class MuseumsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.orangeAccent, // Couleur de l'AppBar en orangeAccent
        title: Text('Musées'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0), // Espace après l'AppBar
        child: ListView(
          children: [
            _buildMuseumCard(
              'Musée National du Bardo',
              'Découvrez l\'histoire ancienne de la Tunisie et de la Méditerranée.',
              'assets/museedebardo-200120-1.jpg',
            ),
            _buildMuseumCard(
              'Musée ELjam',
              'Explorez l\'art et la culture du site archéologique d\'Eljam.',
              'assets/musse_ljaaam.jpg',
            ),
            _buildMuseumCard(
              'Musée Ksar Ouled Soltan',
              'Un musée situé dans un ancien ksar, à Tataouine, offrant un aperçu de l\'architecture traditionnelle.',
              'assets/tatouin_ksarOuledSoltan.jpeg',
            ),
            _buildMuseumCard(
              'Musée Des Arts et Traditions Populaires',
              'Une immersion dans les arts et traditions populaires de la Tunisie.',
              'assets/musée-des-arts-et-traditions-populaires.jpg',
            ),
            // Ajoutez d'autres cartes de musées ici
          ],
        ),
      ),
    );
  }

  Widget _buildMuseumCard(String title, String description, String imagePath) {
    return Center(
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
              height: 200, // Fixe la hauteur uniforme pour toutes les images
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

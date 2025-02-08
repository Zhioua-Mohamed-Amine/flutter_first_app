import 'package:flutter/material.dart';

import 'app_theme.dart'; // Importation de la classe AppTheme

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent, // Couleur de l'AppBar en redAccent
        title: Text('Food'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30.0), // Espace de 30px après l'AppBar
        child: ListView(
          children: [
            _buildFoodCard(
              'Ejja Merguez',
              'Un plat traditionnel tunisien avec des merguez et des œufs.',
              'assets/3ejjaa____i147965-.jpeg',
            ),
            _buildFoodCard(
              'Couscous',
              'Un plat à base de semoule, accompagné de viande, légumes et sauce.',
              'assets/couscous.jpg',
            ),
            _buildFoodCard(
              'Lablebi',
              'Soupe épicée à base de pois chiches, avec du pain et de l\'œuf.',
              'assets/lablebi_images.jpeg',
            ),
            _buildFoodCard(
              'Molokheya',
              'Plat à base de feuilles de corète cuites dans un bouillon épicé.',
              'assets/mmmmmloukhia.jpeg',
            ),
            _buildFoodCard(
              'Melwi',
              'Pain traditionnel tunisien, souvent servi avec de la viande et des légumes.',
              'assets/melwi-tunisie.jpeg',
            ),
            // Ajoutez d'autres cartes de restaurants ici
          ],
        ),
      ),
    );
  }

  Widget _buildFoodCard(String title, String description, String imagePath) {
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
              padding: const EdgeInsets.all(8.0),
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

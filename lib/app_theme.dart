import 'package:flutter/material.dart';

// Classe dédiée au thème de fond de l'application
class AppTheme {
  // Dégradé pour le fond principal de l'application
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Colors.purpleAccent, Colors.blue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Couleur de fond mixée (par exemple un mélange de blanc et de bleu clair)
  static const Color backgroundColor =
      Color.fromARGB(255, 255, 240, 249); // Un bleu très clair

  // Ombre portée légère pour les cartes et autres éléments
  static const BoxShadow boxShadow = BoxShadow(
    color: Colors.black26,
    offset: Offset(0, 4),
    blurRadius: 8.0,
  );

  // Bordures arrondies pour les éléments
  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(15.0));

  // Couleur principale de l'application (primary color)
  static const Color primaryColor = Colors.deepPurple; // Example color

  // Vous pouvez également ajouter un accent color si vous en avez besoin
  static const Color accentColor = Colors.blueAccent;
}

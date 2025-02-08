import 'package:flutter/material.dart';

import 'app_theme.dart'; // Importez votre classe AppTheme

class Destination extends StatefulWidget {
  const Destination({super.key});

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  final List<Map<String, String>> destinations = [
    {
      'name': 'Djerba, Tunisie',
      'image': 'assets/jerba.jpg',
      'description':
          'L’île des rêves, connue pour ses plages et son ambiance paisible.',
    },
    {
      'name': 'Kairouan, Tunisie',
      'image': 'assets/kair.jpg',
      'description':
          'Capitale spirituelle, célèbre pour la Grande Mosquée et les tapis artisanaux.',
    },
    {
      'name': 'Sidi Bou Saïd, Tunisie',
      'image': 'assets/sidii.jpg',
      'description':
          'Un village pittoresque aux maisons blanches et bleues, offrant une vue imprenable sur la mer.',
    },
    {
      'name': 'Aïn Draham, Tunisie',
      'image': 'assets/ain.jpg',
      'description':
          'Une ville nichée dans la montagne, idéale pour les amoureux de la nature et du climat frais.',
    },
    {
      'name': 'El Jem, Tunisie',
      'image': 'assets/ljam.jpg',
      'description':
          'Admirez le majestueux amphithéâtre romain, l’un des mieux conservés au monde.',
    },
    {
      'name': 'Tataouine, Tunisie',
      'image': 'assets/tatouin.jpg',
      'description':
          'Célèbre pour ses paysages désertiques et ses ksours, ayant inspiré Star Wars.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTitleFrame(),
              _buildDestinationsList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleFrame() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 252, 222, 252),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          'Meilleures destinations en Tunisie',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildDestinationsList() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: destinations.map((destination) {
          return Card(
            elevation: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: AppTheme.borderRadius,
            ),
            shadowColor: Colors.black.withOpacity(0.1),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.3, // 50% de la largeur de l'écran
                  height: 180, // Hauteur fixe pour éviter le désalignement
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(destination['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination['name']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          destination['description']!,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

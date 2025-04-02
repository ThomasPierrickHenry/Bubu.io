import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  MyButton({super.key}) {
    // Constructeur de la classe MyButton
  }

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  // Fonction vide qui sera exécutée lorsqu'on appuie sur le bouton
  void _fonctionVide() {
    // Fonction vide, rien ne se passe ici
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _fonctionVide,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.blue, // Couleur du texte sur le bouton
        shape: RoundedRectangleBorder( // Forme du bouton (ici, coins arrondis)
          borderRadius: BorderRadius.circular(12), // Arrondi des coins
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Padding
        elevation: 5, // Ombre portée
      ), // Appel de la fonction vide ici
      child: Text("Envoyée"),
    );
  }
}

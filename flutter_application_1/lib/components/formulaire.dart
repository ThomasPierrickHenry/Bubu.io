

import 'package:flutter/material.dart';

class Formulaire {
  String? nom;
  String? prenom;
  String? email;
  String? pays;

  Formulaire(
    Container({ 
      Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Nom',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            nom = value;
          },
        ),
      ),
      Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Prénom',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            prenom = value;
          },
        ),
      ),
      Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            email = value;
          },
        ),
      ),
      Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Pays',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            pays = value;
          },
        ),
      ),
    }),
  );
}
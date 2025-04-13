import 'dart:convert';

import 'package:crypto/crypto.dart' as _Crypt;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Bdd.dart';

class FormulaireWidget extends StatefulWidget {
  @override
  _FormulaireWidgetState createState() => _FormulaireWidgetState();
}

class _FormulaireWidgetState extends State<FormulaireWidget> {
  final TextEditingController _pseudoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paysController = TextEditingController();


  Future<void> addUserWithBDD(String username, String password) async {
  final db = _Database(); // Création d'une instance de ta classe _Database

  try {
    final conn = await db.connect(); // Connexion à la BDD

    // Exemple de requête d'insertion
    await conn.query(
      'INSERT INTO users (username, password) VALUES (?, ?)',
      [username, password],
    );

    print("Utilisateur ajouté avec succès !");
    
    await conn.close(); // Fermeture de la connexion
  } catch (e) {
    print("Erreur lors de l'ajout de l'utilisateur : $e");
  }
}


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _pseudoController,
              decoration: InputDecoration(
                labelText: 'Peudo',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(),
            )),    
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _paysController,
              decoration: InputDecoration(
                labelText: 'Pays',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String pseudo = _pseudoController.text;
                  String password = _passwordController.text;
                  String hashedPassword = _Crypt.sha256.convert(utf8.encode(password)).toString();
                  String email = _emailController.text;
                  String pays = _paysController.text;

                  print("Nom: $pseudo, Prénom: $hashedPassword, Email: $email, Pays: $pays");
                },
                child: Text("Envoyer"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

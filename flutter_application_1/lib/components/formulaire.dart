import 'package:flutter/material.dart';

class FormulaireWidget extends StatefulWidget {
  @override
  _FormulaireWidgetState createState() => _FormulaireWidgetState();
}

class _FormulaireWidgetState extends State<FormulaireWidget> {
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paysController = TextEditingController();

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
              controller: _nomController,
              decoration: InputDecoration(
                labelText: 'Nom',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _prenomController,
              decoration: InputDecoration(
                labelText: 'Prénom',
                border: OutlineInputBorder(),
              ),
            ),
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
                  String nom = _nomController.text;
                  String prenom = _prenomController.text;
                  String email = _emailController.text;
                  String pays = _paysController.text;

                  print("Nom: $nom, Prénom: $prenom, Email: $email, Pays: $pays");
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

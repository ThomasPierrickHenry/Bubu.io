import 'package:flutter/material.dart';

class LoginFormulaireWidget extends StatefulWidget {
  @override
  _LoginFormulaireWidgetState createState() => _LoginFormulaireWidgetState();
}

class _LoginFormulaireWidgetState extends State<LoginFormulaireWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Cache le mot de passe
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String email = _emailController.text;
                  String password = _passwordController.text;

                  print("Email: $email, Mot de passe: $password");
                },
                child: Text("Se connecter"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

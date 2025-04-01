import 'package:flutter/material.dart';

class MaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma Nouvelle Page'),
      ),
      body: Center(
        child: Text('Contenu de ma page'),
      ),
    );
  }
}
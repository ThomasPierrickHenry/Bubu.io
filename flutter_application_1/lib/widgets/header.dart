import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  final String title;
  final VoidCallback onMenuPressed;

  const HeaderWidget({
    super.key,
    required this.title,
    required this.onMenuPressed,
  });

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool _isAccountMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade300,
            Colors.blue.shade700,
          ],
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 2.0,
                      color: Colors.black26,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  // Bouton Accueil
                  TextButton.icon(
                    onPressed: () {
                      // Navigation vers l'accueil
                    },
                    icon: const Icon(Icons.home, color: Colors.white),
                    label: const Text(
                      'Accueil',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 8),
                  
                  // Bouton Mon Inventaire
                  TextButton.icon(
                    onPressed: () {
                      // Navigation vers l'inventaire
                    },
                    icon: const Icon(Icons.inventory, color: Colors.white),
                    label: const Text(
                      'Mon Inventaire',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 8),
                  
                  // Bouton rond pour Mon Compte
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isAccountMenuOpen = !_isAccountMenuOpen;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.white70],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 20,
                        child: Icon(
                          Icons.person,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          
          // Menu déroulant (rideau dépliant) aligné à droite et avec largeur fixe
          if (_isAccountMenuOpen)
            Align(
              alignment: Alignment.centerRight,
              child: AnimatedContainer(
                width: 300,
                duration: Duration(milliseconds: 200),
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      leading: Icon(Icons.account_circle, color: Colors.blue.shade700),
                      title: Text('Mon Compte'),
                      onTap: () {
                        // Navigation vers la page de compte
                        setState(() {
                          _isAccountMenuOpen = false;
                        });
                      },
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.logout, color: Colors.red),
                      title: Text('Déconnecter', style: TextStyle(color: Colors.red)),
                      onTap: () {
                        // Logique de déconnexion
                        setState(() {
                          _isAccountMenuOpen = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
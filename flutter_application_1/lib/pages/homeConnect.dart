import 'package:flutter/material.dart';

class MainDashboard extends StatefulWidget {
  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  bool isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLoginSelected = true;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      "Connexion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300), // Animation fluide
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      width: 100,
                      color: isLoginSelected ? Colors.blue : Colors.transparent,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLoginSelected = false;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      "Inscription",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300), // Animation fluide
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      width: 100,
                      color: !isLoginSelected ? Colors.blue : Colors.transparent,
                    ),
                  ],
                ),
              ),
              if (!isLoginSelected){
                  Formulaire(),
                 }
                 
              ),
            ],
          ),
        ],
      ),
    );
  }
}

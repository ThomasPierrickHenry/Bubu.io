import 'package:flutter_application_1/pages/homeConnect.dart';

import 'package:flutter_application_1/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(
            title: "Welcome",
            onMenuPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Menu button pressed")),
              );
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child:  MainDashboard(), 
          ),
        ],
      ),
    );
  }
}

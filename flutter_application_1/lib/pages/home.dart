import 'package:Bubu.IO/pages/upload.dart';
import 'package:Bubu.IO/widgets/header.dart';
import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
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
          Expanded(
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UploadPage()),
                  );
                },
                child: const Text("Go to Upload Page"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

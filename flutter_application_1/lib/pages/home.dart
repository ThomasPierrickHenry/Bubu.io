import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/upload.dart';
import 'package:flutter_application_1/widgets/header.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String? _fileName;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _fileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
  onPressed: _pickFile,
  child: Image.asset(
    "assets/uploadImage.png", // Remplace par le chemin de ton image
    width: 50, // Ajuste la taille selon ton besoin
    height: 50,
  ),
            ),
            if (_fileName != null) ...[
              const SizedBox(height: 20),
              Text("Selected File: $_fileName"),
            ],
          ],
        ),
      ),
    );
  }
}

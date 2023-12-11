import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsInputScreen(),
    );
  }
}

class NewsInputScreen extends StatefulWidget {
  @override
  _NewsInputScreenState createState() => _NewsInputScreenState();
}

class _NewsInputScreenState extends State<NewsInputScreen> {
  TextEditingController _judulController = TextEditingController();
  TextEditingController _beritaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Berita'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _judulController,
              decoration: InputDecoration(labelText: 'Judul'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _beritaController,
              maxLines: 4,
              decoration: InputDecoration(labelText: 'Berita'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle simpan berita di sini
                String judul = _judulController.text;
                String berita = _beritaController.text;

                // Anda dapat melakukan sesuatu dengan data berita yang telah dimasukkan, seperti menyimpan ke database, dll.
                // Contoh sederhana mencetak ke konsol:
                print('Judul: $judul');
                print('Berita: $berita');
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}

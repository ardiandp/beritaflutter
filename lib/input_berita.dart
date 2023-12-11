// input_berita.dart
import 'package:flutter/material.dart';
import 'berita_model.dart';
import 'list_berita.dart';

class InputBeritaScreen extends StatefulWidget {
  @override
  _InputBeritaScreenState createState() => _InputBeritaScreenState();
}

class _InputBeritaScreenState extends State<InputBeritaScreen> {
  TextEditingController _judulController = TextEditingController();
  TextEditingController _beritaController = TextEditingController();

  List<Berita> _beritaList = [];

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
                _simpanBerita();
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsListScreen(beritaList: _beritaList),
            ),
          );
        },
        child: Icon(Icons.list),
      ),
    );
  }

  void _simpanBerita() {
    String judul = _judulController.text;
    String berita = _beritaController.text;

    setState(() {
      _beritaList.add(Berita(judul: judul, isi: berita));
    });

    // Clear input fields setelah menyimpan
    _judulController.clear();
    _beritaController.clear();
  }
}

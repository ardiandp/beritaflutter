// list_berita.dart
import 'package:flutter/material.dart';
import 'berita_model.dart';

class NewsListScreen extends StatelessWidget {
  final List<Berita> beritaList;

  NewsListScreen({required this.beritaList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Berita'),
      ),
      body: ListView.builder(
        itemCount: beritaList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(beritaList[index].judul),
            subtitle: Text(beritaList[index].isi),
          );
        },
      ),
    );
  }
}

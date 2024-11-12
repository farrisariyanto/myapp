import 'package:flutter/material.dart';
import 'detail_page.dart'; // Pastikan Anda sudah membuat halaman detail

class HomePage extends StatelessWidget {
  // Daftar kota yang akan ditampilkan
  final List<String> cities = ['Pekalongan', 'Jakarta', 'Bali', 'Batang'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kota di Indonesia'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ), // Judul AppBar
      ),
      body: ListView.builder(
        itemCount: cities.length, // Jumlah kota yang ada
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cities[index]), // Nama kota
            onTap: () {
              // Navigasi ke halaman detail saat kota dipilih
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                      city: cities[
                          index]), // Mengirim nama kota ke halaman DetailPage
                ),
              );
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String city;

  // Constructor untuk menerima nama kota yang dipilih
  DetailPage({required this.city});

  @override
  Widget build(BuildContext context) {
    // Membuat path gambar berdasarkan nama kota
    String imagePath = 'assets/images/${city.toLowerCase()}.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kota'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan nama kota
            Text(
              'Nama Kota: $city',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Menampilkan informasi tambahan tentang kota
            Text(
              'Ini adalah halaman detail untuk kota $city. Anda bisa menambahkan lebih banyak informasi di sini.',
            ),
            SizedBox(height: 20),
            // Menampilkan gambar kota setelah teks
            Center(
              child: Image.asset(
                  imagePath), // Menampilkan gambar berdasarkan nama kota
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home_page.dart'; // Import halaman utama
import 'screens/detail_page.dart'; // Import halaman detail

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Kota Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Halaman utama aplikasi
      home: HomePage(),
      // Tidak menggunakan `debugShowCheckedModeBanner` untuk menghilangkan banner debug
      debugShowCheckedModeBanner: false,
    );
  }
}

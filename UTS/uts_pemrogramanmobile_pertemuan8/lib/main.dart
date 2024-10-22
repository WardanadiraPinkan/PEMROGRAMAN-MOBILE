import 'package:flutter/material.dart';
import 'package:uts_pemrogramanmobile_pertemuan8/about_page.dart'; // Import halaman About
import 'package:uts_pemrogramanmobile_pertemuan8/home_page.dart';  // Import halaman Home
import 'package:uts_pemrogramanmobile_pertemuan8/landing_page.dart'; // Import halaman Landing
import 'package:uts_pemrogramanmobile_pertemuan8/login_page.dart'; // Import halaman Login
import 'package:uts_pemrogramanmobile_pertemuan8/profile_page.dart'; // Import halaman Profile

void main() {
  runApp(MyApp()); // Fungsi utama untuk menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah widget utama yang mengatur routing dan tema aplikasi.
    return MaterialApp(
      title: 'Flutter Web App', // Judul aplikasi
      theme: ThemeData(
        // Pengaturan tema untuk aplikasi
        primarySwatch: Colors.blue, // Warna utama
        scaffoldBackgroundColor: Colors.grey[100], // Warna background untuk seluruh halaman
        visualDensity: VisualDensity.adaptivePlatformDensity, // Pengaturan densitas visual adaptif
      ),
      home: LandingPage(), // Halaman pertama yang ditampilkan adalah LandingPage
      routes: {
        '/login': (context) => LoginPage(), // Route untuk halaman Login
        '/home': (context) => HomePage(), // Route untuk halaman Home
        '/about': (context) => AboutPage(), // Route untuk halaman About
        '/profile': (context) => ProfilePage(), // Route untuk halaman Profile
      },
    );
  }
}

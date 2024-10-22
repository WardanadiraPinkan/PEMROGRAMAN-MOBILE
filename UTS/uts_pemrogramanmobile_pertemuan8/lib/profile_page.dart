import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil username dari HomePage
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    // Password bisa diambil dari suatu sumber atau statis untuk sementara waktu
    final String password = "********"; // Contoh password yang disamarkan

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.blueAccent], // Gradasi warna
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Tambahkan padding di seluruh konten
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Pusatkan konten di tengah
              children: [
                Card(
                  elevation: 8, // Menambahkan bayangan pada kartu
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Ukuran kolom minimal
                      crossAxisAlignment: CrossAxisAlignment.start, // Sejajarkan semua elemen ke kiri
                      children: <Widget>[
                        Center(
                          // Teks judul "User Profile" di tengah
                          child: Text(
                            'User Profile',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Jarak antar elemen
                        // Row untuk menampilkan Username
                        Row(
                          children: [
                            // Label untuk kolom username
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Username:',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            // Tampilkan username yang didapat dari login
                            Expanded(
                              flex: 2,
                              child: Text(
                                username,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Row untuk menampilkan Password
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Password:',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                password, // Password ditampilkan sebagai teks samar
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40), // Tambahkan jarak sebelum tombol Back
                // Tombol untuk kembali ke halaman sebelumnya
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Fungsi untuk kembali ke halaman sebelumnya
                  },
                  child: Text(
                    'Back', 
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

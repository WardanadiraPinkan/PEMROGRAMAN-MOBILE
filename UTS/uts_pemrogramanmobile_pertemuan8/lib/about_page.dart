import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      // Body dari halaman diatur dengan Container dan diberi dekorasi background gradasi.
      body: Container(
        decoration: BoxDecoration(
          // LinearGradient untuk memberikan efek gradasi pada background halaman.
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        // Center untuk memposisikan konten di tengah halaman.
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Jarak di sekitar konten.
            child: Card(
              elevation: 10, // Memberikan efek bayangan (shadow) pada kartu.
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // Membulatkan sudut kartu.
              ),
              color: Colors.white, // Warna latar belakang kartu.
              child: Padding(
                padding: const EdgeInsets.all(24.0), // Jarak dalam kartu.
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center, // Rata tengah konten.
                  children: <Widget>[
                    // Teks judul di atas deskripsi.
                    Text(
                      'About This App',
                      style: TextStyle(
                        fontSize: 28, // Ukuran teks judul.
                        fontWeight: FontWeight.bold, // Teks judul tebal.
                        color: Colors.blueAccent, // Warna teks judul.
                      ),
                    ),
                    SizedBox(height: 20), // Jarak antara judul dan deskripsi.
                    // Teks deskripsi aplikasi.
                    Text(
                      'This is a simple Flutter web application demonstrating '
                      'navigation, user login, and profile management.',
                      textAlign: TextAlign.center, // Mengatur teks agar rata tengah.
                      style: TextStyle(
                        fontSize: 18, // Ukuran teks deskripsi.
                        color: Colors.grey[800], // Warna teks deskripsi.
                      ),
                    ),
                    SizedBox(height: 20), // Jarak antara teks deskripsi dan tombol.
                    // Tombol untuk kembali ke halaman sebelumnya.
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Aksi kembali ke halaman sebelumnya.
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent, // Warna tombol.
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Sudut tombol dibulatkan.
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: Text(
                        'Back', // Teks pada tombol.
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

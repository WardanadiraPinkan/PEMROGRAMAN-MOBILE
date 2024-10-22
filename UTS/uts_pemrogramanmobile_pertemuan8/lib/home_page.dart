import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil username dari LoginPage
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Teks selamat datang
              Text(
                'Welcome, $username!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20), // Jarak antar elemen
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Tombol ke halaman profile
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile', arguments: username);
                    },
                    child: Text('Go to Profile'),
                  ),
                  SizedBox(width: 10),
                  // Tombol ke halaman about
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: Text('About'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

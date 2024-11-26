import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() {
    Future.microtask(() async {
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      print("Loading user...");
      try {
        await authProvider.loadUser();
        print("User: ${authProvider.user}");
      } catch (e) {
        print("Error loading user: $e");
      }

      if (!mounted) return;

      if (authProvider.user != null) {
        print("Navigating to profile");
        Navigator.of(context).pushReplacementNamed('/profile');
      } else {
        print("Navigating to login");
        Navigator.of(context).pushReplacementNamed('/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('My Flutter App', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
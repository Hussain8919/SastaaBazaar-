import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const SastaaBazaarApp());
}

class SastaaBazaarApp extends StatelessWidget {
  const SastaaBazaarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SastaaBazaar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}

// Splash Screen with 2-second delay and fraud warning
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo (You can replace with Image.asset if you add image)
            const Icon(Icons.store_mall_directory, size: 80, color: Colors.green),
            const SizedBox(height: 20),

            const Text(
              'SastaaBazaar',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),

            const Text(
              '⚠️ Beware of fraud!\nOnly deal in cash or UPI at time of delivery.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

// HomePage Template (With buttons or bottom nav later)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SastaaBazaar'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Welcome to SastaaBazaar!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
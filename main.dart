import 'package:flutter/material.dart';

void main() {
  runApp(const SastaaBazaarApp());
}

class SastaaBazaarApp extends StatelessWidget {
  const SastaaBazaarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SastaaBazaar',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen1(),
    );
  }
}

// Splash Screen 1
class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Center(
        child: Text(
          'SastaaBazaar',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade900,
          ),
        ),
      ),
    );
  }
}

// Splash Screen 2
class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Now Buy/Sell Your Used Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.orange.shade800,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Text(
              '⚠️ Do not make any online payment\nunless you are fully satisfied\nafter checking the product physically.\n\n⚠️ जब तक आप प्रोडक्ट को देखकर\nपूरी तरह संतुष्ट न हों,\nकिसी को भी ऑनलाइन पेमेंट न करें।',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.red.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Home Page with Bottom Navigation
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onNavBarTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = [
    Center(child: Text('Home', style: TextStyle(fontSize: 24))),
    Center(child: Text('Chats', style: TextStyle(fontSize: 24))),
    Center(child: Text('Add Product', style: TextStyle(fontSize: 24))),
    Center(child: Text('My Profile', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavBarTap,
        selectedItemColor: Colors.green.shade800,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
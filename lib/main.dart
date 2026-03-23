import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/agent_profile_page.dart';
import 'pages/stats_page.dart';
import 'pages/gallery_page.dart';
import 'pages/about_page.dart';

void main() {
  runApp(const ValorantApp());
}

class ValorantApp extends StatelessWidget {
  const ValorantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VALORANT Chamber',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFF0F0F0F),
            colorScheme: ColorScheme.dark(
              primary: const Color(0xFFC8A84B),
              secondary: const Color(0xFFC8A84B),
              surface: const Color(0xFF1A1A1A),
          ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Color(0xFF0F0F0F),
              selectedItemColor: Color(0xFFC8A84B),
              unselectedItemColor: Color(0xFF555555),
          ),
        ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    AgentProfilePage(),
    StatsPage(),
    GalleryPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: const Color(0xFF0F0F0F),
        selectedItemColor: const Color(0xFFC8A84B),
        unselectedItemColor: const Color(0xFF555555),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 18),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 18),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart, size: 18),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library, size: 18),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline, size: 18),
            label: 'About',
          ),
        ],
      ),
    );
  }
}
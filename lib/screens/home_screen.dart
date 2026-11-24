
import 'package:flutter/material.dart';
import 'package:orale_labact0b/constant.dart';
import 'package:orale_labact0b/widgets/notification.dart';
import 'newsfeed_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    NewsfeedScreen(),
    NotificationScreen(),
  ];

  final List<String> _titles = [
    appName,
    'Notifications',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        backgroundColor: dkDarkPrimary,
        foregroundColor: dkTextColorWhite,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: dkDarkPrimary,
        selectedItemColor: dkSecondary,
        unselectedItemColor: dkLightPrimary,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}

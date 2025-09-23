import 'package:flutter/material.dart';
import 'home/pages/home_page.dart';
import 'discover/pages/discover_page.dart';
import 'library/pages/library_page.dart';
import 'challenge/pages/challenge_page.dart';
import 'profile/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const DiscoverPage(),
    const LibraryPage(),
    const ChallengePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        elevation: 8,
        selectedFontSize: 12,
        unselectedFontSize: 11,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book,
              color: _currentIndex == 0
                  ? Colors.brown.shade600
                  : Colors.grey.shade400,
            ),
            label: 'Sách',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: _currentIndex == 1
                  ? Colors.orange.shade600
                  : Colors.grey.shade400,
            ),
            label: 'Khám phá',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              color: _currentIndex == 2
                  ? Colors.green.shade600
                  : Colors.grey.shade400,
            ),
            label: 'Thư viện',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emoji_events,
              color: _currentIndex == 3
                  ? Colors.amber.shade600
                  : Colors.grey.shade400,
            ),
            label: 'Thử thách',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: _currentIndex == 4
                  ? Colors.blue.shade600
                  : Colors.grey.shade400,
            ),
            label: 'Tài khoản',
          ),
        ],
      ),
    );
  }
}

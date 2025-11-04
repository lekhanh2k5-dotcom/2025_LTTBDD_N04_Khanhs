import 'package:flutter/material.dart';
import 'home/pages/home_page.dart';
import 'discover/pages/discover_page.dart';
import 'library/pages/library_page.dart';
import 'challenge/pages/challenge_page.dart';
import 'profile/pages/profile_page.dart';
import '../../../utils/app_language.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    AppLanguage.onLanguageChanged = () {
      setState(() {});
    };
  }

  @override
  void dispose() {
    AppLanguage.onLanguageChanged = null;
    super.dispose();
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const DiscoverPage();
      case 2:
        return LibraryPage(key: ValueKey(_currentIndex));
      case 3:
        return const ChallengePage();
      case 4:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth >= 600;

    return Scaffold(
      body: _buildPage(_currentIndex),
      bottomNavigationBar: Container(
        padding: isTablet
            ? EdgeInsets.symmetric(horizontal: screenWidth * 0.2)
            : EdgeInsets.zero,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: const Color(0xFF1976D2),
            unselectedItemColor: Colors.grey.shade400,
            backgroundColor: Colors.transparent,
            elevation: 0,
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
                      ? const Color(0xFF42A5F5)
                      : Colors.grey.shade400,
                ),
                label: AppLanguage.get('nav_home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  color: _currentIndex == 1
                      ? const Color(0xFF26A69A)
                      : Colors.grey.shade400,
                ),
                label: AppLanguage.get('nav_discover'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  color: _currentIndex == 2
                      ? const Color(0xFF1E88E5)
                      : Colors.grey.shade400,
                ),
                label: AppLanguage.get('nav_library'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.emoji_events,
                  color: _currentIndex == 3
                      ? const Color(0xFFFF9800)
                      : Colors.grey.shade400,
                ),
                label: AppLanguage.get('nav_challenge'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: _currentIndex == 4
                      ? const Color(0xFF7E57C2)
                      : Colors.grey.shade400,
                ),
                label: AppLanguage.get('nav_profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

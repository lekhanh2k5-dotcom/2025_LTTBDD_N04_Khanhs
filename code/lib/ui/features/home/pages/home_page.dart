import 'package:flutter/material.dart';
import '../../../../data/models/book.dart';
import '../../../../widgets/book_card.dart';
import '../../../../data/models/review.dart';
import '../../../../widgets/review_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildWelcomeMessage(),
                  _buildFeaturedBooks(),
                  _buildRecentReading(),
                  _buildFeaturedReviews(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 80,
      color: const Color(0xFF8D6E63),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(Icons.menu_book, color: Colors.white, size: 28),
              const SizedBox(width: 12),
              const Text(
                'Sách',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeMessage() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF8D6E63).withOpacity(0.1),
            const Color(0xFF8D6E63).withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF8D6E63).withOpacity(0.2),
          width: 1,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '🎉 Chào mừng trở lại!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8D6E63),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Hãy tiếp tục hành trình đọc sách của bạn',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedBooks() {
    final featuredBooks = sampleBooks.where((book) => book.isFeatured).toList();

    return Column(
      children: [
        _buildSectionHeader('⭐ Sách nổi bật', 'Xem thêm'),
        Container(
          height: 280,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredBooks.length,
            itemBuilder: (context, index) {
              return BookCard(
                book: featuredBooks[index],
                type: CardType.grid,
                width: 140,
                heroContext: 'featured',
                onFavorite: () {
                  // Handle favorite
                  print('Favorite: ${featuredBooks[index].title}');
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRecentReading() {
    // Placeholder - lấy 3 sách đầu tiên làm "đọc gần đây"
    final recentBooks = sampleBooks.take(3).toList();

    return Column(
      children: [
        _buildSectionHeader('📖 Đọc gần đây', 'Xem thêm'),
        Container(
          height: 280,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recentBooks.length,
            itemBuilder: (context, index) {
              return BookCard(
                book: recentBooks[index],
                type: CardType.grid,
                width: 140,
                heroContext: 'recent',
                onFavorite: () {
                  print('Favorite: ${recentBooks[index].title}');
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title, String actionText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Tapped $actionText for $title');
            },
            child: Text(
              actionText,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF8D6E63),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedReviews() {
    return Column(
      children: [
        _buildSectionHeader('📝 Đánh Giá Nổi Bật', 'Xem thêm'),
        const SizedBox(height: 16),
        SizedBox(
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: sampleReviews.length,
            itemBuilder: (context, index) {
              return ReviewCard(
                review: sampleReviews[index],
                onTap: () {
                  print('Review tapped: ${sampleReviews[index].bookTitle}');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

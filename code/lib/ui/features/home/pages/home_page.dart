import 'package:flutter/material.dart';
import '../../../../data/models/book.dart';
import '../../../../widgets/book_card.dart';
import '../../../../data/models/review.dart';
import '../../../../widgets/review_card.dart';
import '../../../../data/models/category.dart';
import '../../category/pages/category_detail_page.dart';
import '../../category/pages/categories_page.dart';
import '../../book/pages/featured_books_page.dart';

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
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildWelcomeMessage(),
                      _buildFeaturedBooks(context),
                      _buildCategoriesBrowser(),
                      _buildDynamicCategorySections(),
                      _buildRecentReading(),
                      _buildFeaturedReviews(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
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
            const Color(0xFF8D6E63).withOpacity(0.2),
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

  Widget _buildFeaturedBooks(BuildContext context) {
    final featuredBooks = sampleBooks.where((book) => book.isFeatured).toList();
    return Column(
      children: [
        _buildSectionHeader(
          '⭐ Sách nổi bật',
          'Xem thêm',
          onActionTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FeaturedBooksPage(),
              ),
            );
          },
        ),
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

  Widget _buildSectionHeader(
    String title,
    String actionText, {
    VoidCallback? onActionTap,
  }) {
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
            onTap:
                onActionTap ??
                () {
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

  Widget _buildCategoryHeader({
    required BuildContext context,
    required String categoryId,
    required String icon,
    required String name,
    required int count,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(icon, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 8),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '$count',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryDetailPage(categoryId: categoryId),
                ),
              );
            },
            child: const Text(
              'Xem thêm',
              style: TextStyle(
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

  Widget _buildCategoriesBrowser() {
    return Builder(
      builder: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(
            '📚 Danh Mục',
            'Xem tất cả',
            onActionTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CategoriesPage()),
              );
            },
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: sampleCategories.length,
              itemBuilder: (context, index) {
                final category = sampleCategories[index];
                final bookCount = sampleBooks
                    .where((book) => book.categoryId == category.id)
                    .length;
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CategoryDetailPage(categoryId: category.id),
                      ),
                    );
                  },
                  child: Container(
                    width: 140,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          category.gradientColor1,
                          category.gradientColor2,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: category.gradientColor1.withOpacity(0.4),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            category.icon,
                            style: const TextStyle(fontSize: 28),
                          ),
                          const SizedBox(height: 4),
                          Expanded(
                            child: Text(
                              category.name,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.2,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '$bookCount sách',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDynamicCategorySections() {
    final allCategories = sampleCategories;

    return Builder(
      builder: (context) {
        return Column(
          children: allCategories.map((category) {
            return _buildCategorySection(context, category.id);
          }).toList(),
        );
      },
    );
  }

  Widget _buildCategorySection(BuildContext context, String categoryId) {
    final category = sampleCategories.firstWhere(
      (cat) => cat.id == categoryId,
      orElse: () => sampleCategories.first,
    );

    final totalBookCount = sampleBooks
        .where((book) => book.categoryId == categoryId)
        .length;

    final categoryBooks = sampleBooks
        .where((book) => book.categoryId == categoryId)
        .toList();

    if (categoryBooks.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        _buildCategoryHeader(
          context: context,
          categoryId: categoryId,
          icon: category.icon,
          name: category.name,
          count: totalBookCount,
          color: category.gradientColor1,
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: categoryBooks.length,
            itemBuilder: (context, index) {
              return BookCard(
                book: categoryBooks[index],
                type: CardType.grid,
                width: 140,
                heroContext: 'category_${category.id}',
                onFavorite: () {
                  print('Favorite: ${categoryBooks[index].title}');
                },
              );
            },
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../data/models/book.dart';
import '../../../../widgets/book_card.dart';

class FeaturedBooksPage extends StatelessWidget {
  const FeaturedBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final featuredBooks = sampleBooks.where((book) => book.isFeatured).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Row(
          children: [
            Text('⭐', style: TextStyle(fontSize: 24)),
            SizedBox(width: 8),
            Text(
              'Sách Nổi Bật',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: featuredBooks.isEmpty
          ? _buildEmptyState()
          : Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final isTablet = constraints.maxWidth >= 600;
                    return GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: isTablet ? 4 : 2,
                        childAspectRatio: 0.55,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: featuredBooks.length,
                      itemBuilder: (context, index) {
                        return BookCard(
                          book: featuredBooks[index],
                          type: CardType.grid,
                          heroContext: 'featured_books',
                          onFavorite: () {
                            print('Favorite: ${featuredBooks[index].title}');
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star_outline, size: 80, color: Colors.grey.shade400),
          const SizedBox(height: 16),
          Text(
            'Chưa có sách nổi bật',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Hiện chưa có sách nào được đánh dấu nổi bật',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }
}

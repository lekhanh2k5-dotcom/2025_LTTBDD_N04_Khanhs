import 'package:flutter/material.dart';
import '../../../../data/models/book.dart';
import '../../../../data/models/category.dart';
import '../../../shared/widgets/book_card.dart';
import '../../../../services/language_service.dart';

class CategoryDetailPage extends StatelessWidget {
  final String categoryId;

  const CategoryDetailPage({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    final category = sampleCategories.firstWhere(
      (cat) => cat.id == categoryId,
      orElse: () => sampleCategories.first,
    );

    final categoryBooks = sampleBooks
        .where((book) => book.categoryId == categoryId)
        .toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: category.gradientColor1,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Text(category.icon, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                category.translatedName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: categoryBooks.isEmpty
                ? _buildEmptyState()
                : Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final isTablet = constraints.maxWidth >= 600;
                          return GridView.builder(
                            padding: const EdgeInsets.all(16),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: isTablet ? 4 : 2,
                                  childAspectRatio: 0.55,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 16,
                                ),
                            itemCount: categoryBooks.length,
                            itemBuilder: (context, index) {
                              return BookCard(
                                book: categoryBooks[index],
                                heroContext: 'category_detail_${category.id}',
                                onFavorite: () {
                                  print(
                                    'Favorite: ${categoryBooks[index].title}',
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.book_outlined, size: 80, color: Colors.grey.shade400),
          const SizedBox(height: 16),
          Text(
            AppLanguage.isEnglish ? 'No books yet' : 'Chưa có sách nào',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppLanguage.isEnglish
                ? 'This category has no books yet'
                : 'Thể loại này hiện chưa có sách',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }
}

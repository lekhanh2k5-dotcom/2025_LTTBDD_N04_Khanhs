import 'package:flutter/material.dart';
import '../../../../data/models/book.dart';
import '../../../../data/models/category.dart';
import '../../../../widgets/book_card.dart';

class BookDetailPage extends StatefulWidget {
  final BookModel book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  bool isFavorite = false;
  bool isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBookCover(),
            _buildBookInfo(),
            _buildActionButtons(),
            _buildRatingSection(),
            _buildDescriptionSection(),
            _buildReviewsSection(),
            _buildRelatedBooksSection(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF8D6E63),
      elevation: 0,
      titleSpacing: 0, // Giảm spacing để có thêm không gian cho title
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        widget.book.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.share, color: Colors.white),
          onPressed: () {
            // Share functionality
          },
        ),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF8D6E63), Color(0xFF8D6E63)],
          ),
        ),
      ),
    );
  }

  Widget _buildBookCover() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Hero(
        tag: 'book_cover_${widget.book.id}',
        child: Container(
          width: 200,
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: widget.book.coverImageUrl.isNotEmpty
                ? Image.asset(
                    widget.book.coverImageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        _buildPlaceholder(),
                  )
                : _buildPlaceholder(),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF8D6E63).withOpacity(0.7),
            const Color(0xFF8D6E63).withOpacity(0.5),
          ],
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.book, size: 48, color: Colors.white),
            SizedBox(height: 8),
            Text(
              'No Cover',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            widget.book.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.book.author,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          // Favorite Button
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.grey[300]!, width: 1),
            ),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey[600],
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ),

          const SizedBox(width: 16),

          // Main Action Button
          Expanded(
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                gradient: const LinearGradient(
                  colors: [Color(0xFF8D6E63), Color(0xFFA1887F)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF8D6E63).withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to PDF reader
                  print('Start reading: ${widget.book.title}');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.menu_book, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Bắt đầu đọc',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Rating Stars
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Icon(
                        Icons.star_border,
                        color: Colors.grey[400],
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '--/5.0',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Chưa có đánh giá',
                  style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                ),
              ],
            ),
          ),

          // Category
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Danh mục',
                style: TextStyle(fontSize: 12, color: Colors.grey[500]),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF8D6E63).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF8D6E63).withOpacity(0.3),
                  ),
                ),
                child: Text(
                  _getCategoryName(widget.book.categoryId),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF8D6E63),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Giới thiệu nội dung',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.book.description.isNotEmpty
                ? widget.book.description
                : 'Chưa có mô tả cho cuốn sách này.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
            maxLines: isDescriptionExpanded ? null : 3,
            overflow: isDescriptionExpanded ? null : TextOverflow.ellipsis,
          ),
          if (widget.book.description.length > 100)
            TextButton(
              onPressed: () {
                setState(() {
                  isDescriptionExpanded = !isDescriptionExpanded;
                });
              },
              child: Text(
                isDescriptionExpanded ? 'Thu gọn ↑' : 'Xem thêm ↓',
                style: const TextStyle(
                  color: Color(0xFF8D6E63),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildReviewsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Đánh giá',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.chat_bubble_outline,
                  size: 48,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 12),
                Text(
                  'Chưa có đánh giá nào',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRelatedBooksSection() {
    // Get related books from same category
    final relatedBooks = sampleBooks
        .where(
          (book) =>
              book.categoryId == widget.book.categoryId &&
              book.id != widget.book.id,
        )
        .take(5)
        .toList();

    if (relatedBooks.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Text(
            'Ebook tương tự',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        Container(
          height: 280, // Tăng height để tránh overflow
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: relatedBooks.length,
            itemBuilder: (context, index) {
              return BookCard(
                book: relatedBooks[index],
                type: CardType.grid,
                width: 140,
                showCategory: false, // Tắt category để giảm height
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailPage(book: relatedBooks[index]),
                    ),
                  );
                },
                onFavorite: () {
                  print('Favorite: ${relatedBooks[index].title}');
                },
              );
            },
          ),
        ),
      ],
    );
  }

  String _getCategoryName(String categoryId) {
    final category = sampleCategories.firstWhere(
      (cat) => cat.id == categoryId,
      orElse: () => sampleCategories.first,
    );
    return category.name;
  }
}

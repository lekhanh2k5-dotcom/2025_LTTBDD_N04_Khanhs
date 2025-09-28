import 'package:flutter/material.dart';
import '../data/models/book.dart';
import '../ui/features/book/pages/book_detail_page.dart';

enum CardType { grid, list }

class BookCard extends StatelessWidget {
  final BookModel book;
  final CardType type;
  final bool showCategory;
  final VoidCallback? onTap;
  final VoidCallback? onFavorite;
  final double? width;

  const BookCard({
    Key? key,
    required this.book,
    this.type = CardType.grid,
    this.showCategory = false,
    this.onTap,
    this.onFavorite,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type == CardType.grid
        ? _buildGridCard(context)
        : _buildListCard(context);
  }

  Widget _buildGridCard(BuildContext context) {
    final cardWidth = width ?? 120.0;

    return GestureDetector(
      onTap: onTap ?? () => _navigateToBookDetail(context),
      child: Container(
        width: cardWidth,
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container với A5 ratio
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 7 / 10, // A5 ratio
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Hero(
                      tag: 'book_cover_${book.id}',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: _buildCoverImage(),
                      ),
                    ),
                  ),
                ),
                // Favorite Button
                if (onFavorite != null)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: GestureDetector(
                      onTap: onFavorite,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          size: 16,
                          color: Color(0xFF8D6E63),
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(height: 8),

            // Title - Cố định 2 dòng
            SizedBox(
              height:
                  34, // Cố định chiều cao cho 2 dòng (14px * 1.2 * 2 + spacing)
              child: Text(
                book.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),
            ),

            const SizedBox(height: 4),

            // Author - Luôn ở dòng thứ 3
            Text(
              'by ${book.author}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),

            // Category Badge (optional)
            if (showCategory)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: _buildCategoryBadge(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildListCard(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => _navigateToBookDetail(context),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Image Container
            Container(
              width: 56,
              height: 80, // A5 ratio: 56 * (10/7) = 80
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Hero(
                tag: 'book_cover_${book.id}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: _buildCoverImage(),
                ),
              ),
            ),

            const SizedBox(width: 12),

            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title - Cố định 2 dòng
                  SizedBox(
                    height:
                        38.4, // Cố định chiều cao cho 2 dòng (16px * 1.2 * 2 + spacing)
                    child: Text(
                      book.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        height: 1.2,
                      ),
                    ),
                  ),

                  const SizedBox(height: 4),

                  // Author - Luôn ở dòng thứ 3
                  Text(
                    'by ${book.author}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),

                  // Category Badge (optional)
                  if (showCategory)
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: _buildCategoryBadge(),
                    ),
                ],
              ),
            ),

            // Favorite Button
            if (onFavorite != null)
              GestureDetector(
                onTap: onFavorite,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: Color(0xFF8D6E63),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoverImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF8D6E63).withOpacity(0.3),
            const Color(0xFF8D6E63).withOpacity(0.1),
          ],
        ),
      ),
      child: book.coverImageUrl.isNotEmpty
          ? Image.asset(
              book.coverImageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return _buildPlaceholder();
              },
            )
          : _buildPlaceholder(),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF8D6E63).withOpacity(0.2),
            const Color(0xFF8D6E63).withOpacity(0.1),
          ],
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.menu_book_rounded, size: 32, color: Color(0xFF8D6E63)),
          SizedBox(height: 8),
          Text(
            'BookReader',
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF8D6E63),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'No Cover',
            style: TextStyle(fontSize: 8, color: Color(0xFF8D6E63)),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xFF8D6E63).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF8D6E63).withOpacity(0.3),
          width: 0.5,
        ),
      ),
      child: Text(
        book.categoryId, // Sẽ cần mapping sau để hiển thị tên category
        style: const TextStyle(
          fontSize: 10,
          color: Color(0xFF8D6E63),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  void _navigateToBookDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
    );
  }
}

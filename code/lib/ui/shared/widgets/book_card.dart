import 'package:flutter/material.dart';
import '../../../data/models/book.dart';
import '../../features/book/pages/book_detail_page.dart';

class BookCard extends StatelessWidget {
  final BookModel book;
  final VoidCallback? onTap;
  final VoidCallback? onFavorite;
  final double? width;
  final String? heroContext;
  final bool showFavoriteButton;

  const BookCard({
    Key? key,
    required this.book,
    this.onTap,
    this.onFavorite,
    this.width,
    this.heroContext,
    this.showFavoriteButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildGridCard(context);
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
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 7 / 10,
                  child: Hero(
                    tag: 'book_cover_${book.id}_${heroContext ?? 'main'}',
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: _buildCoverImage(),
                      ),
                    ),
                  ),
                ),
                if (showFavoriteButton && onFavorite != null)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: GestureDetector(
                      onTap: onFavorite,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite,
                          size: 18,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(height: 8),

            SizedBox(
              height: 34,
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

            Text(
              'by ${book.author}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
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

  void _navigateToBookDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            BookDetailPage(book: book, heroContext: heroContext),
      ),
    );
  }
}

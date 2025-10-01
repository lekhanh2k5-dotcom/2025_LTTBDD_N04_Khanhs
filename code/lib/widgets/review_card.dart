import 'package:flutter/material.dart';
import '../data/models/review.dart';
import '../ui/features/book/pages/review_detail_page.dart';
import '../data/models/book.dart';
import '../ui/features/book/pages/book_detail_page.dart';

class ReviewCard extends StatefulWidget {
  final ReviewModel review;
  final VoidCallback? onTap;

  const ReviewCard({Key? key, required this.review, this.onTap})
    : super(key: key);

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      margin: const EdgeInsets.only(right: 16),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUserInfo(),
                const SizedBox(height: 12),
                _buildRatingAndTitle(),
                const SizedBox(height: 12),
                _buildContent(),
                const SizedBox(height: 16),
                _buildRatingScores(),
                const SizedBox(height: 16),
                _buildBookInfo(),
                const SizedBox(height: 12),
                _buildLikeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(widget.review.userAvatarUrl),
          backgroundColor: Colors.grey[300],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.review.userName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                widget.review.timeAgo,
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRatingAndTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 14),
            const SizedBox(width: 4),
            Text(
              '${widget.review.rating}/5',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                widget.review.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.review.content,
          style: TextStyle(color: Colors.grey[700], fontSize: 14, height: 1.4),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        if (widget.review.content.length > 100)
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReviewDetailPage(review: widget.review),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Xem thêm',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildRatingScores() {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Nội dung: ${widget.review.contentRating}/5',
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            'Thể loại: ${widget.review.styleRating}/5',
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildBookInfo() {
    // Tìm book từ bookId trong review
    final book = sampleBooks.firstWhere(
      (b) => b.id == widget.review.bookId,
      orElse: () => sampleBooks.first,
    );

    return GestureDetector(
      onTap: () {
        // Navigate to BookDetailPage khi tap vào thông tin sách
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[300],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.review.bookCoverUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: Icon(Icons.book, color: Colors.grey[600], size: 30),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    widget.review.categoryName.toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.review.bookTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  widget.review.bookAuthor,
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLikeButton() {
    return Row(
      children: [
        Icon(Icons.thumb_up_outlined, color: Colors.grey[600], size: 20),
        const SizedBox(width: 8),
        Text(
          '${widget.review.likes}',
          style: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
        const Spacer(),
      ],
    );
  }
}

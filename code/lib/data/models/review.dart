class ReviewModel {
  final String id;
  final String userName;
  final String userAvatarUrl;
  final String timeAgo;
  final double rating;
  final String title;
  final String content;
  final String bookId;
  final String bookTitle;
  final String bookAuthor;
  final String categoryName;
  final int contentRating;
  final int styleRating;
  final int likes;

  ReviewModel({
    required this.id,
    required this.userName,
    required this.userAvatarUrl,
    required this.timeAgo,
    required this.rating,
    required this.title,
    required this.content,
    required this.bookId,
    required this.bookTitle,
    required this.bookAuthor,
    required this.categoryName,
    required this.contentRating,
    required this.styleRating,
    required this.likes,
  });
}

// Danh sách đánh giá mẫu
final List<ReviewModel> sampleReviews = [
  ReviewModel(
    id: 'review1',
    userName: 'Nguyễn Văn An',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '2 ngày trước',
    rating: 5.0,
    title: 'Bài học ý nghĩa và truyền cảm hứng!',
    content:
        'Cuốn sách gợi cho mình rất nhiều điều: Kỷ niệm thời đi học với nhiều bạn bè, Sự nghiệt ngã và vô thường về số phận con người và, Bài học ý nghĩa về dũng bộ học... Thực sự tác phẩm đã khép lại những cơn đọng lại nơi bu...',
    bookId: 'book1',
    bookTitle: 'Nhà Giả Kim',
    bookAuthor: 'Paulo Coelho',
    categoryName: 'Tiểu thuyết',
    contentRating: 5,
    styleRating: 5,
    likes: 125,
  ),
  ReviewModel(
    id: 'review2',
    userName: 'Trần Thị Minh',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '1 tuần trước',
    rating: 4.5,
    title: 'Sách hay về khoa học!',
    content:
        'Tôi đã học được rất nhiều kiến thức bổ ích từ cuốn sách này. Tác giả giải thích các khái niệm phức tạp một cách dễ hiểu và thú vị...',
    bookId: 'book2',
    bookTitle: 'Sapiens',
    bookAuthor: 'Yuval Noah Harari',
    categoryName: 'Khoa học',
    contentRating: 4,
    styleRating: 5,
    likes: 89,
  ),
  ReviewModel(
    id: 'review3',
    userName: 'Lê Hoàng Nam',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '3 ngày trước',
    rating: 4.8,
    title: 'Cuốn sách đổi đời!',
    content:
        'Đây là cuốn sách đã thay đổi hoàn toàn cách nhìn của tôi về kinh doanh và cuộc sống. Rất nhiều bài học thực tế và hữu ích...',
    bookId: 'book3',
    bookTitle: 'Khởi Nghiệp Tinh Gọn',
    bookAuthor: 'Eric Ries',
    categoryName: 'Kinh doanh',
    contentRating: 5,
    styleRating: 4,
    likes: 156,
  ),
];

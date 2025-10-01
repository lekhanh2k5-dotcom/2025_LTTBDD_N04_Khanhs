import 'book.dart';

class ReviewModel {
  final String id;
  final String userName;
  final String userAvatarUrl;
  final String timeAgo;
  final double rating;
  final String title;
  final String content;
  final String bookId;
  final int contentRating;
  final int styleRating;
  final int likes;

  String get bookTitle {
    final book = sampleBooks.firstWhere(
      (b) => b.id == bookId,
      orElse: () => sampleBooks.first,
    );
    return book.title;
  }

  String get bookAuthor {
    final book = sampleBooks.firstWhere(
      (b) => b.id == bookId,
      orElse: () => sampleBooks.first,
    );
    return book.author;
  }

  String get bookCoverUrl {
    final book = sampleBooks.firstWhere(
      (b) => b.id == bookId,
      orElse: () => sampleBooks.first,
    );
    return book.coverImageUrl;
  }

  String get categoryName {
    final book = sampleBooks.firstWhere(
      (b) => b.id == bookId,
      orElse: () => sampleBooks.first,
    );

    switch (book.categoryId) {
      case 'cat1':
        return 'Văn học kinh điển';
      case 'cat3':
        return 'Kinh doanh';
      case 'cat4':
        return 'Kỹ năng';
      case 'cat5':
        return 'Văn học Việt Nam';
      case 'cat7':
        return 'Lịch sử';
      case 'cat8':
        return 'Trinh thám';
      case 'cat9':
        return 'Thiếu nhi';
      case 'cat10':
        return 'Nghiên cứu';
      default:
        return 'Tổng hợp';
    }
  }

  ReviewModel({
    required this.id,
    required this.userName,
    required this.userAvatarUrl,
    required this.timeAgo,
    required this.rating,
    required this.title,
    required this.content,
    required this.bookId,
    required this.contentRating,
    required this.styleRating,
    required this.likes,
  });
}

final List<ReviewModel> sampleReviews = [
  ReviewModel(
    id: 'review1',
    userName: 'Nguyễn Văn An',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '2 ngày trước',
    rating: 5.0,
    title: 'Rất hay!',
    content:
        'Nhà Giả Kim thực sự là một cuốn sách làm thay đổi cách nhìn về cuộc sống của tôi. Paulo Coelho đã khéo léo kể về hành trình của Santiago - chàng chăn cừu trẻ tuổi theo đuổi giấc mơ tìm kho báu. Qua từng trang sách, tôi hiểu rằng kho báu thực sự không phải là vàng bạc mà chính là những trải nghiệm, bài học và sự trưởng thành trong hành trình theo đuổi ước mơ. Câu chuyện không chỉ mang tính giải trí mà còn chứa đựng những triết lý sâu sắc về định mệnh, lòng dũng cảm và niềm tin vào bản thân. Đây là cuốn sách tôi sẽ đọc đi đọc lại và giới thiệu cho bạn bè.',
    bookId: 'book10', // Nhà Giả Kim
    contentRating: 5,
    styleRating: 5,
    likes: 125,
  ),
  ReviewModel(
    id: 'review2',
    userName: 'Trần Thị Minh',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '1 tuần trước',
    rating: 4.8,
    title: 'Xuất sắc',
    content:
        'Chiến Binh Cầu Vồng của Andrea Hirata là một tác phẩm tuyệt vời về tình bạn thuở thiếu thời. Câu chuyện xoay quanh những đứa trẻ ở đảo Belitung, Indonesia, với ước mơ đơn giản nhưng tràn đầy hy vọng. Tác giả đã miêu tả một cách chân thực và cảm động về cuộc sống khó khăn nhưng đầy màu sắc của những đứa trẻ. Mỗi nhân vật đều có cá tính riêng biệt, đặc biệt là tình bạn trong sáng của chúng khiến tôi nhớ về tuổi thơ của chính mình. Cuốn sách này không chỉ kể về ước mơ mà còn về nghị lực vượt qua khó khăn và sức mạnh của tình bạn. Đọc xong, tôi cảm thấy trân trọng hơn những điều giản dị trong cuộc sống.',
    bookId: 'book3', // Chiến Binh Cầu Vồng
    contentRating: 5,
    styleRating: 4,
    likes: 89,
  ),
  ReviewModel(
    id: 'review3',
    userName: 'Lê Hoàng Nam',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '3 ngày trước',
    rating: 4.9,
    title: 'Nên đọc mn nha',
    content:
        'Cuốn sách "Tuổi 20 - Những Năm Tháng Quyết Định Cuộc Đời Bạn" thực sự đã mở mang tầm mắt của tôi về độ tuổi quan trọng này. Tác giả đã chỉ ra rằng tuổi 20 không phải là thời gian để "tìm hiểu bản thân" mà là lúc để hành động và xây dựng nền tảng cho tương lai. Những lời khuyên về career, relationships, và personal development trong sách rất thực tế và dễ áp dụng. Đặc biệt, phần về việc thoát khỏi comfort zone và đặt mục tiêu dài hạn đã giúp tôi có định hướng rõ ràng hơn. Đây không chỉ là cuốn sách lý thuyết mà còn là guide book thực tế cho những ai đang ở độ tuổi 20 hoặc chuẩn bị bước vào giai đoạn này.',
    bookId: 'book1', // Tuổi 20
    contentRating: 5,
    styleRating: 5,
    likes: 156,
  ),
  ReviewModel(
    id: 'review4',
    userName: 'Phạm Thu Hà',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '5 ngày trước',
    rating: 4.7,
    title: 'Tiểu thuyết tuyệt vời',
    content:
        'Mùa Đỏ của Chu Lai là một tác phẩm văn học Việt Nam đương đại xuất sắc. Tác giả đã khắc họa một cách tinh tế và sâu sắc về cuộc sống của những con người bình thường trong xã hội hiện đại. Qua từng trang sách, tôi cảm nhận được sự tinh tế trong cách Chu Lai miêu tả tâm lý nhân vật và những mâu thuẫn nội tâm của họ. Văn phong của tác giả vừa giản dị vừa sâu lắng, khiến người đọc dễ dàng đồng cảm với các nhân vật. Cuốn sách không chỉ kể chuyện mà còn là những suy ngẫm về tình người, về những khó khăn trong cuộc sống và cách con người vượt qua chúng. Đây là tác phẩm đáng đọc cho những ai yêu thích văn học Việt Nam.',
    bookId: 'book34', // Mùa Đỏ - Chu Lai
    contentRating: 5,
    styleRating: 4,
    likes: 98,
  ),
  ReviewModel(
    id: 'review5',
    userName: 'Hoàng Minh Tuấn',
    userAvatarUrl: 'assets/images/placeholder_cover.jpg',
    timeAgo: '1 ngày trước',
    rating: 4.6,
    title: 'Kiến thức bổ ích',
    content:
        'Là một người mới bắt đầu khởi nghiệp, tôi tìm thấy rất nhiều giá trị trong cuốn sách này. Tác giả đã chia sẻ những kinh nghiệm thực tế từ quá trình xây dựng doanh nghiệp, từ những thất bại đến thành công. Điều tôi thích nhất là cách tiếp cận đơn giản và dễ hiểu của tác giả, không nói suông mà đưa ra những case study cụ thể. Các chiến lược marketing, quản lý tài chính và xây dựng team được trình bày một cách logic và khoa học. Đọc xong cuốn sách, tôi có thêm nhiều ý tưởng mới cho startup của mình và cảm thấy tự tin hơn trong việc đưa ra các quyết định kinh doanh.',
    bookId: 'book5', // Nếu có sách về kinh doanh
    contentRating: 4,
    styleRating: 5,
    likes: 76,
  ),
];

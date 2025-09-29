// lib/models/book.dart

class BookModel {
  final String id;
  final String title;
  final String author;
  final String coverImageUrl; // URL hoặc đường dẫn asset
  final String categoryId; // Để liên kết với CategoryModel
  final String description;
  final double rating; // Ví dụ: 4.5
  final int pageCount;
  final String publisher;
  final String publishDate;
  final String language;
  final String pdfAssetPath; // Đường dẫn đến file PDF trong assets (nếu có)
  final bool isFeatured; // Sách này có nổi bật không?

  BookModel({
    required this.id,
    required this.title,
    required this.author,
    required this.coverImageUrl,
    required this.categoryId,
    this.description = '',
    this.rating = 0.0,
    this.pageCount = 0,
    this.publisher = '',
    this.publishDate = '',
    this.language = 'Tiếng Việt',
    this.pdfAssetPath = '',
    this.isFeatured = false,
  });
}

// Dữ liệu sách mẫu - Sau này sẽ chuyển vào datasource hoặc API
// Chúng ta sẽ thêm sách vào đây sau khi có ảnh bìa và thông tin chi tiết hơn
final List<BookModel> sampleBooks = [
  BookModel(
    id: 'book1',
    title: 'Tuổi 20 - Những Năm Tháng Quyết Định Cuộc Đời Bạn',
    author: 'Ly Nguyễn',
    coverImageUrl:
        'assets/images/placeholder_cover.jpg', // Sửa lại đường dẫn này sau
    categoryId: 'cat4', // Kỹ năng
    description:
        'Cuốn sách dành cho những ai đang ở ngưỡng cửa tuổi 20, đầy những trăn trở và định hướng cho tương lai.',
    pdfAssetPath: 'assets/pdfs/sample.pdf', // Giả sử đây là file PDF tương ứng
    isFeatured: true,
  ),
  BookModel(
    id: 'book2',
    title: 'Cây Cam Ngọt Của Tôi',
    author: 'Jose Mauro de Vasconcelos',
    coverImageUrl: 'assets/images/book2.png',
    categoryId: 'cat1', // Văn học kinh điển
    description:
        'Câu chuyện cảm động về Zezé, một cậu bé tinh nghịch có trí tưởng tượng bay bổng và tình bạn đặc biệt với cây cam trong vườn.',
    pdfAssetPath: 'assets/pdfs/sample.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book3',
    title: 'Chiến Binh Cầu Vồng',
    author: 'Andrea Hirata',
    coverImageUrl: 'assets/images/book3.png',
    categoryId: 'cat1', // Văn học kinh điển
    description:
        'Một câu chuyện đầy cảm hứng về nghị lực phi thường của những đứa trẻ nghèo trên hòn đảo Belitong trong hành trình đi tìm con chữ.',
    pdfAssetPath: 'assets/pdfs/sample.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book4',
    title: 'Digital Marketing Cho Doanh Nghiệp Nhỏ',
    author: 'Avery Swartz',
    coverImageUrl: 'assets/images/book4.png',
    categoryId: 'cat3', // Kinh doanh
    description:
        'Hướng dẫn thực tế về cách áp dụng các công cụ marketing kỹ thuật số để phát triển doanh nghiệp nhỏ một cách hiệu quả.',
    pdfAssetPath:
        'assets/pdfs/Digital Marketing Cho Doanh Nghiep Nho - Avery Swartz.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book5',
    title: 'Đồi Gió Hú',
    author: 'Emily Bronte',
    coverImageUrl: 'assets/images/book5.png',
    categoryId: 'cat1', // Văn học kinh điển
    description:
        'Một tiểu thuyết kinh điển về tình yêu mãnh liệt, sự hận thù và trả thù trải dài qua hai thế hệ tại vùng đồng hoang Yorkshire.',
    pdfAssetPath: 'assets/pdfs/Doi Gio Hu - Emily Bronte.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book6',
    title: 'Gấu Pooh Xinh Xắn',
    author: 'A. A. Milne',
    coverImageUrl: 'assets/images/book6.png',
    categoryId: 'cat9', // Sách thiếu nhi
    description:
        'Những cuộc phiêu lưu đáng yêu của chú gấu Pooh và những người bạn trong khu rừng Trăm Mẫu.',
    pdfAssetPath:
        'assets/pdfs/Gau Pooh Xinh Xan - A. A. Milne & Nguyen Tam (dich).pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book7',
    title: 'Hãy Sống Mạnh Mẽ',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book7.png',
    categoryId: 'cat4', // Kỹ năng
    description:
        'Tuyển tập các bài viết truyền cảm hứng, giúp người đọc tìm thấy sức mạnh nội tâm để vượt qua khó khăn trong cuộc sống.',
    pdfAssetPath: 'assets/pdfs/Hay Song Manh Me - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book8',
    title: 'Hoàng Tử Bé',
    author: 'Antoine de Saint Exupery',
    coverImageUrl: 'assets/images/book8.png',
    categoryId: 'cat1', // Văn học kinh điển
    description:
        'Một câu chuyện triết lý sâu sắc dành cho mọi lứa tuổi về tình bạn, tình yêu và những giá trị thực sự trong cuộc sống.',
    pdfAssetPath: 'assets/pdfs/Hoang Tu Be - Antoine de Saint Exupery.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book9',
    title: 'Không Gia Đình',
    author: 'Hector Malot',
    coverImageUrl: 'assets/images/book9.png',
    categoryId: 'cat1', // Văn học kinh điển
    description:
        'Hành trình phiêu bạt đầy gian truân của cậu bé Rémi đi tìm gia đình, một bài ca về lòng dũng cảm và tình người.',
    pdfAssetPath: 'assets/pdfs/Khong Gia Dinh - Hector Malot.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book10',
    title: 'Nhà Giả Kim',
    author: 'Paulo Coelho',
    coverImageUrl: 'assets/images/book10.png',
    categoryId: 'cat1', // Văn học kinh điển
    description:
        'Chuyến phiêu du của chàng chăn cừu Santiago đi tìm kho báu, một hành trình khám phá về định mệnh và ý nghĩa cuộc đời.',
    pdfAssetPath: 'assets/pdfs/Nha Gia Kim - Paulo Coelho.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book11',
    title: 'Những Trận Hải Chiến Nổi Tiếng Thế Giới',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book11.png',
    categoryId: 'cat7', // Lịch sử
    description:
        'Tổng hợp các trận hải chiến có tầm ảnh hưởng lớn, làm thay đổi cục diện lịch sử thế giới qua các thời đại.',
    pdfAssetPath:
        'assets/pdfs/Nhung Tran Hai Chien Noi Tieng The Gioi - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book12',
    title: 'Những Vụ Án Nổi Tiếng Trên Thế Giới',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book12.png',
    categoryId: 'cat8', // Trinh thám/Hình sự
    description:
        'Tuyển tập các vụ án có thật, ly kỳ và phức tạp đã đi vào lịch sử tội phạm học thế giới.',
    pdfAssetPath:
        'assets/pdfs/Nhung Vu An Noi Tieng Tren The Gioi - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book13',
    title: 'Tạp San Nghiên Cứu Văn Sử Địa Tập 13',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book13.png',
    categoryId: 'cat10', // Nghiên cứu học thuật
    description:
        'Tập hợp các bài nghiên cứu chuyên sâu về các chủ đề văn học, lịch sử và địa lý.',
    pdfAssetPath:
        'assets/pdfs/Tap San Nghien Cuu Van Su Dia Tap 13 - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book14',
    title: 'Ông Già và Biển Cả',
    author: 'Ernest Hemingway',
    coverImageUrl: 'assets/images/book14.png',
    categoryId: 'cat1', // Văn học kinh điển
    description:
        'Cuộc đấu tranh kiên cường của ông lão Santiago với con cá kiếm khổng lồ trên biển cả, một biểu tượng về phẩm giá con người.',
    pdfAssetPath: 'assets/pdfs/Ong Gia va Bien Ca.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book15',
    title: 'Anh em nhà Karamazov',
    author: 'Fyodor Mikhailovich',
    coverImageUrl: 'assets/images/book15.png',
    categoryId: 'cat1',
    description:
        'Một tác phẩm vĩ đại của văn học Nga, khám phá những vấn đề sâu sắc về đạo đức, tôn giáo và sự tha hóa của con người thông qua câu chuyện về gia đình Karamazov.',
    pdfAssetPath: 'assets/pdfs/Anh em nha Karamazov.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book16',
    title: 'Rung Na-uy',
    author: 'Haruki Murakami',
    coverImageUrl: 'assets/images/book16.png',
    categoryId: 'cat1',
    description:
        'Một câu chuyện tình yêu và nỗi buồn đầy ám ảnh của chàng sinh viên Toru Watanabe, phản ánh những hoài niệm về tuổi trẻ và sự mất mát.',
    pdfAssetPath: 'assets/pdfs/Rung Na-uy.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book17',
    title: 'Những Trận Hai Chien Noi Tieng The Gioi',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book17.png',
    categoryId: 'cat1',
    description:
        'Tổng hợp các trận chiến vĩ đại trong lịch sử nhân loại, phân tích chiến lược và tác động của chúng đến cục diện thế giới.',
    pdfAssetPath: 'assets/pdfs/Nhung Tran Hai Chien Noi Tieng The Gioi.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book18',
    title: 'Coi Troi Linh Hon',
    author: 'Michael A. Singer',
    coverImageUrl: 'assets/images/book18.png',
    categoryId: 'cat1',
    description:
        'Cuốn sách hướng dẫn người đọc cách giải phóng tâm trí khỏi những suy nghĩ tiêu cực và tìm thấy sự bình yên nội tại, giúp bạn khám phá bản chất thật của mình.',
    pdfAssetPath: 'assets/pdfs/Coi Troi Linh Hon.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book19',
    title: 'Ca Voi Trang',
    author: 'Herman Melville',
    coverImageUrl: 'assets/images/book19.png',
    categoryId: 'cat1',
    description:
        'Cuộc săn lùng đầy ám ảnh của thuyền trưởng Ahab và thủy thủ đoàn tàu Pequod để trả thù con cá nhà táng trắng khổng lồ Moby Dick, một biểu tượng của sự đối đầu giữa con người và thiên nhiên.',
    pdfAssetPath: 'assets/pdfs/Ca Voi Trang.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book20',
    title: 'Ba Tuoc Dracula',
    author: 'Bram Stoker',
    coverImageUrl: 'assets/images/book20.png',
    categoryId: 'cat1',
    description:
        'Tác phẩm kinh điển về ma cà rồng, kể về Bá tước Dracula tìm cách lan truyền lời nguyền của mình đến nước Anh, mang đến nỗi sợ hãi và kinh hoàng cho những ai chống lại hắn.',
    pdfAssetPath: 'assets/pdfs/Ba Tuoc Dracula.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book21',
    title: 'Nghien Cuu Van Ban Tieu Thuyet So Do',
    author: 'Lai Nguyen An',
    coverImageUrl: 'assets/images/book21.png',
    categoryId: 'cat5',
    description:
        'Một công trình nghiên cứu chuyên sâu về tác phẩm "Số Đỏ" của nhà văn Vũ Trọng Phụng, phân tích bối cảnh, nội dung và giá trị nghệ thuật của tiểu thuyết.',
    pdfAssetPath: 'assets/pdfs/Nghien Cuu Van Ban Tieu Thuyet So Do.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book22',
    title: 'Trại Súc Vật',
    author: 'George Orwell',
    coverImageUrl: 'assets/images/book22.png',
    categoryId: 'cat1',
    description:
        'Một câu chuyện ngụ ngôn chính trị sắc sảo, phê phán sự tha hóa của quyền lực qua cuộc nổi dậy của các loài vật trong một trang trại, lật đổ loài người để xây dựng xã hội của riêng chúng.',
    pdfAssetPath: 'assets/pdfs/Trai Suc Vat.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book23',
    title: 'Jane Eyre',
    author: 'Charlotte Bronte',
    coverImageUrl: 'assets/images/book23.png',
    categoryId: 'cat1',
    description:
        'Cuốn tiểu thuyết lãng mạn kinh điển kể về cuộc đời đầy thử thách của cô gái Jane Eyre, từ tuổi thơ bất hạnh đến khi tìm thấy tình yêu và sự độc lập.',
    pdfAssetPath: 'assets/pdfs/Jane Eyre.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book24',
    title: 'Tien De Ra Tien Dau Tu Tai Chinh Thong Minh',
    author: 'Duncan Bannatyne',
    coverImageUrl: 'assets/images/book24.png',
    categoryId: 'cat4',
    description:
        'Khám phá những chiến lược đầu tư tài chính thông minh và hiệu quả để tiền có thể tự sinh ra tiền, được chia sẻ bởi doanh nhân thành đạt Duncan Bannatyne.',
    pdfAssetPath:
        'assets/pdfs/Tien De Ra Tien Dau Tu Tai Chinh Thong Minh - Duncan Bannatyne.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book25',
    title: 'Dam Bi Ghet',
    author: 'Kishimi Ichiro & Koga Fumitake',
    coverImageUrl: 'assets/images/book25.png',
    categoryId: 'cat4',
    description:
        'Một cuộc đối thoại sâu sắc dựa trên tâm lý học Adler, giúp bạn giải phóng bản thân khỏi sự phán xét của người khác và tìm thấy sự tự do trong việc là chính mình.',
    pdfAssetPath:
        'assets/pdfs/Dam Bi Ghet - Kishimi Ichiro & Koga Fumitake.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book26',
    title: 'Suc Manh Cua Su Tram Lang',
    author: 'Jennifer B. Kahnweiler',
    coverImageUrl: 'assets/images/book26.png',
    categoryId: 'cat4',
    description:
        'Cuốn sách tôn vinh những thế mạnh của người hướng nội trong một thế giới ồn ào, chỉ ra cách họ có thể tận dụng sự trầm lặng để lãnh đạo và tạo ra ảnh hưởng.',
    pdfAssetPath:
        'assets/pdfs/Suc Manh Cua Su Tram Lang - Jennifer B. Kahnweiler.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book27',
    title: 'Yes Or No Nhung Quyet Dinh Thay Doi Cuoc Song',
    author: 'Spencer Johnson',
    coverImageUrl: 'assets/images/book27.png',
    categoryId: 'cat4',
    description:
        'Hướng dẫn bạn cách đưa ra những quyết định sáng suốt hơn bằng một hệ thống đơn giản nhưng hiệu quả, từ đó thay đổi cuộc sống một cách tích cực.',
    pdfAssetPath:
        'assets/pdfs/Yes Or No Nhung Quyet Dinh Thay Doi Cuoc Song - Spencer Johnson.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book28',
    title: 'Dam Nghi Lai',
    author: 'Adam Grant',
    coverImageUrl: 'assets/images/book28.png',
    categoryId: 'cat4',
    description:
        'Khuyến khích chúng ta về tầm quan trọng của việc xem xét lại niềm tin và quan điểm của mình, mở lòng với những góc nhìn mới để trở nên khôn ngoan hơn.',
    pdfAssetPath: 'assets/pdfs/Dam Nghi Lai - Adam Grant.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book29',
    title: 'Nhung Ao Tuong Ve Thien Tai',
    author: 'Anders Ericsson',
    coverImageUrl: 'assets/images/book29.png',
    categoryId: 'cat4',
    description:
        'Phá vỡ những lầm tưởng về tài năng bẩm sinh và chứng minh rằng bất kỳ ai cũng có thể trở thành chuyên gia thông qua phương pháp "luyện tập có chủ đích".',
    pdfAssetPath:
        'assets/pdfs/Nhung Ao Tuong Ve Thien Tai - Anders Ericsson.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book30',
    title: 'Dung bao gio di an mot minh',
    author: 'Keith Ferrazzi',
    coverImageUrl: 'assets/images/book30.png',
    categoryId: 'cat4',
    description:
        'Bí quyết xây dựng mạng lưới quan hệ bền chặt và chân thành, nhấn mạnh rằng thành công không đến từ sự đơn độc mà từ việc kết nối và giúp đỡ người khác.',
    pdfAssetPath:
        'assets/pdfs/Dung bao gio di an mot minh - Keith Ferrazzi.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book31',
    title: 'Vuon den su hoan thien',
    author: 'Zig Ziglar',
    coverImageUrl: 'assets/images/book31.png',
    categoryId: 'cat4',
    description:
        'Nguồn cảm hứng và những nguyên tắc đã được kiểm chứng để phát triển bản thân, giúp bạn đặt ra mục tiêu và chinh phục đỉnh cao trong sự nghiệp và cuộc sống.',
    pdfAssetPath: 'assets/pdfs/Vuon den su hoan thien - Zig Ziglar.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book32',
    title: 'Tu Duy Phan Bien',
    author: 'Zoe McKey',
    coverImageUrl: 'assets/images/book32.png',
    categoryId: 'cat4',
    description:
        'Cung cấp các công cụ và kỹ thuật thiết thực để rèn luyện kỹ năng tư duy phản biện, giúp bạn phân tích thông tin, nhận diện ngụy biện và đưa ra lập luận logic.',
    pdfAssetPath: 'assets/pdfs/Tu Duy Phan Bien 2 - Zoe McKey.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book33',
    title: 'Ky luat ban than nen tang cho thanh cong',
    author: 'Patrick Forsyth',
    coverImageUrl: 'assets/images/book33.png',
    categoryId: 'cat4',
    description:
        'Nhấn mạnh rằng kỷ luật tự giác là yếu tố cốt lõi của mọi thành công, đồng thời đưa ra những phương pháp thực tế để xây dựng và duy trì thói quen tốt.',
    pdfAssetPath:
        'assets/pdfs/Ky luat ban than nen tang cho thanh cong - Patrick Forsyth.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book34',
    title: 'Mua Do - Chu Lai',
    author: 'Chu Lai',
    coverImageUrl: 'assets/images/book34.png',
    categoryId: 'cat5',
    description:
        'Một tác phẩm văn học đặc sắc của nhà văn Chu Lai, khắc họa sâu sắc những câu chuyện về con người và cuộc sống trong bối cảnh xã hội Việt Nam đầy biến động.',
    pdfAssetPath: 'assets/pdfs/Mua Do - Chu Lai.pdf',
    isFeatured: true,
  ),
];

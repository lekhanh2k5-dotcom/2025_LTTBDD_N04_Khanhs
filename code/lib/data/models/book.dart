// lib/models/book.dart

class BookModel {
  final String id;
  final String title;
  final String author;
  final String coverImageUrl;
  final String categoryId;
  final String description;
  final double rating;
  final int pageCount;
  final String publisher;
  final String publishDate;
  final String language;
  final String pdfAssetPath;
  final bool isFeatured;

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

// Dữ liệu sách mẫu
final List<BookModel> sampleBooks = [
  BookModel(
    id: 'book1',
    title: 'Tết Ở Làng Địa Ngục',
    author: 'Thảo Trang',
    coverImageUrl: 'assets/images/book1.png',
    categoryId: 'cat8',
    description:
        'Một vụ án bí ẩn xảy ra vào dịp Tết tại làng Địa Ngục - nơi có nhiều truyền thuyết kinh dị. Thảo Trang dẫn dắt người đọc vào cuộc điều tra đầy gay cấn, nơi ranh giới giữa hiện thực và huyền bí dần trở nên mờ nhạt. Từng manh mối được hé lộ qua lời kể của dân làng, những phong tục kỳ lạ và bí mật gia tộc được chôn giấu từ lâu. Cuốn tiểu thuyết trinh thám kết hợp yếu tố văn hóa dân gian Việt Nam tạo nên một tác phẩm độc đáo và hấp dẫn.',
    pdfAssetPath: 'assets/pdfs/Tet o lang Dia Nguc - Thao Trang.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book2',
    title: 'Cây Cam Ngọt Của Tôi',
    author: 'Jose Mauro de Vasconcelos',
    coverImageUrl: 'assets/images/book2.png',
    categoryId: 'cat1',
    description:
        'Zezé là một cậu bé năm tuổi tinh nghịch, thông minh nhưng luôn bị mọi người hiểu lầm. Trong gia đình nghèo khó với những áp lực cuộc sống, cậu tìm thấy niềm an ủi qua những cuộc trò chuyện với cây cam ngọt trong vườn - người bạn duy nhất luôn lắng nghe và chia sẻ. Tác phẩm là một bức tranh chân thực về tuổi thơ đầy vất vả, về sự đau đớn khi trưởng thành sớm, nhưng cũng tràn ngập tình yêu thương và sự kiên cường của tâm hồn trẻ thơ. Đây là câu chuyện lay động trái tim về tình bạn, gia đình và những tổn thương không thể nào quên.',
    pdfAssetPath:
        'assets/pdfs/Cay Cam Ngot Cua Toi - Jose Mauro de Vasconcelos.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book3',
    title: 'Chiến Binh Cầu Vồng',
    author: 'Andrea Hirata',
    coverImageUrl: 'assets/images/book3.png',
    categoryId: 'cat1',
    description:
        'Trên hòn đảo Belitong nghèo khó của Indonesia, mười đứa trẻ vùng lên chống lại số phận bằng khát vọng học tập. Dù thiếu thốn về mọi mặt, các em vẫn kiên trì đến trường trong căn lớp học tồi tàn sắp sập. Câu chuyện là lời ca ngợi sức mạnh của tri thức, lòng kiên trì và ước mơ vươn tới ánh sáng. Thầy giáo nghèo nhưng tận tâm, những học trò giàu nghị lực và tình bạn trong sáng đã tạo nên một thiên anh hùng ca đầy xúc động. Đây là minh chứng rằng không hoàn cảnh nào có thể dập tắt được khát khao học hỏi và vươn lên của con người.',
    pdfAssetPath: 'assets/pdfs/Chien Binh Cau Vong - Andrea Hirata.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book4',
    title: 'Digital Marketing Cho Doanh Nghiệp Nhỏ',
    author: 'Avery Swartz',
    coverImageUrl: 'assets/images/book4.png',
    categoryId: 'cat3',
    description:
        'Trong thời đại số, marketing truyền thống không còn đủ để cạnh tranh. Cuốn sách này cung cấp lộ trình chi tiết giúp doanh nghiệp nhỏ tận dụng sức mạnh của internet để tiếp cận khách hàng. Từ việc xây dựng website, SEO, quảng cáo Google Ads đến marketing trên mạng xã hội, email marketing và phân tích dữ liệu - tất cả được trình bày một cách dễ hiểu với ngân sách phù hợp. Avery Swartz chia sẻ kinh nghiệm thực tế, những chiến lược đã được kiểm chứng và các case study thành công, giúp chủ doanh nghiệp tự tin bước vào thế giới digital marketing.',
    pdfAssetPath:
        'assets/pdfs/Digital Marketing Cho Doanh Nghiep Nho - Avery Swartz.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book5',
    title: 'Đồi Gió Hú',
    author: 'Emily Bronte',
    coverImageUrl: 'assets/images/book5.png',
    categoryId: 'cat1',
    description:
        'Trên vùng đồng hoang Yorkshire hoang vu, câu chuyện tình yêu đầy bi kịch giữa Heathcliff và Catherine đã để lại một di sản đau thương kéo dài hai thế hệ. Tình yêu không thành biến thành hận thù ăn sâu, Heathcliff dành cả đời để trả thù những người đã làm anh đau khổ. Tác phẩm là sự khám phá sâu sắc về những cảm xúc cực đoan của con người - tình yêu, hận thù, ghen tuông và khao khát được đền bù. Emily Bronte đã tạo nên một kiệt tác văn học Gothic đầy ám ảnh, nơi thiên nhiên và tâm hồn con người đan xen trong một bản giao hưởng u ám.',
    pdfAssetPath: 'assets/pdfs/Doi Gio Hu - Emily Bronte.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book6',
    title: 'Gấu Pooh Xinh Xắn',
    author: 'A. A. Milne',
    coverImageUrl: 'assets/images/book6.png',
    categoryId: 'cat9',
    description:
        'Bước vào khu rừng Trăm Mẫu kỳ diệu, nơi chú gấu Pooh và những người bạn ngộ nghĩnh sống những cuộc phiêu lưu đáng nhớ. Từ việc đi săn Heffalump, cứu hộ Hổ Tigger bị mắc kẹt, đến những buổi tiệc trà vui vẻ - mỗi câu chuyện đều tràn đầy sự hồn nhiên và những bài học nhẹ nhàng về tình bạn. Christopher Robin và hội bạn thú nhồi bông đã trở thành biểu tượng của tuổi thơ trong sáng. Dù đơn giản nhưng tác phẩm chứa đựng triết lý sâu sắc về sự đơn thuần và hạnh phúc trong những điều nhỏ bé của cuộc sống.',
    pdfAssetPath:
        'assets/pdfs/Gau Pooh Xinh Xan - A. A. Milne & Nguyen Tam (dich).pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book7',
    title: 'Hãy Sống Mạnh Mẽ',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book7.png',
    categoryId: 'cat4',
    description:
        'Cuộc sống không thiếu những thử thách và khó khăn, nhưng điều quan trọng là thái độ chúng ta đối mặt với chúng. Tuyển tập này quy tụ những câu chuyện truyền cảm hứng từ nhiều tác giả, mỗi người chia sẻ hành trình vượt qua ngh逆境 của riêng mình. Từ việc đối mặt với thất bại, vượt qua bệnh tật, đến tái thiết cuộc đời sau những mất mát - tất cả đều mang thông điệp về sức mạnh tinh thần con người. Cuốn sách là nguồn động lực giúp bạn tin vào khả năng của bản thân, học cách đứng dậy sau mỗi lần vấp ngã và sống một cuộc đời đầy nghị lực.',
    pdfAssetPath: 'assets/pdfs/Hay Song Manh Me - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book8',
    title: 'Hoàng Tử Bé',
    author: 'Antoine de Saint Exupery',
    coverImageUrl: 'assets/images/book8.png',
    categoryId: 'cat1',
    description:
        'Một phi công rơi máy bay giữa sa mạc Sahara bất ngờ gặp hoàng tử bé từ tiểu hành tinh B-612. Qua cuộc gặp gỡ kỳ diệu này, chúng ta được nghe những câu chuyện về hành trình của hoàng tử đến các hành tinh khác nhau, gặp gỡ những con người kỳ lạ. Tác phẩm là lời nhắc nhở đầy thơ mộng về những giá trị đích thực: tình bạn, trách nhiệm, và sự trong sáng của tâm hồn trẻ thơ. Mỗi trang sách đều chứa đựng triết lý sâu sắc về cuộc sống, tình yêu và ý nghĩa của sự tồn tại, được kể qua giọng văn giản dị nhưng đầy cảm động.',
    pdfAssetPath: 'assets/pdfs/Hoang Tu Be - Antoine de Saint Exupery.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book9',
    title: 'Không Gia Đình',
    author: 'Hector Malot',
    coverImageUrl: 'assets/images/book9.png',
    categoryId: 'cat1',
    description:
        'Rémi, một cậu bé bị bỏ rơi, được người mẹ nuôi nghèo khổ chăm sóc cho đến khi bị bán cho ông già Vitalis - nghệ sĩ hát rong. Cùng đoàn xiếc nhỏ gồm chó và khỉ, Rémi bắt đầu hành trình phiêu bạt khắp nước Pháp, trải qua vô số thử thách đầy gian khổ. Câu chuyện là bản anh hùng ca về lòng dũng cảm, nghị lực và tình người trong hoàn cảnh khắc nghiệt nhất. Mỗi chặng đường mở ra bài học về cuộc sống, về tình bạn và hy vọng. Tác phẩm kinh điển này đã lay động hàng triệu trái tim với thông điệp nhân văn sâu sắc.',
    pdfAssetPath: 'assets/pdfs/Khong Gia Dinh - Hector Malot.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book10',
    title: 'Nhà Giả Kim',
    author: 'Paulo Coelho',
    coverImageUrl: 'assets/images/book10.png',
    categoryId: 'cat1',
    description:
        'Santiago, chàng chăn cừu trẻ người Tây Ban Nha, từ bỏ cuộc sống bình yên để theo đuổi giấc mơ về kho báu ẩn giấu bên chân kim tự tháp Ai Cập. Hành trình qua sa mạc không chỉ là cuộc tìm kiếm vật chất mà còn là quá trình khám phá bản thân, học hỏi từ thiên nhiên và lắng nghe tiếng nói của trái tim. Gặp gỡ nhà giả kim, Santiago nhận ra rằng kho báu thực sự không nằm ở đích đến mà ở chính cuộc hành trình. Tác phẩm là câu chuyện ngụ ngôn đẹp đẽ về việc theo đuổi ước mơ, về định mệnh cá nhân và sức mạnh của niềm tin.',
    pdfAssetPath: 'assets/pdfs/Nha Gia Kim - Paulo Coelho.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book11',
    title: 'Những Trận Hải Chiến Nổi Tiếng Thế Giới',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book11.png',
    categoryId: 'cat7',
    description:
        'Từ trận Salamis cổ đại đến Midway trong Thế chiến II, mỗi trận hải chiến đều là một bước ngoặt lịch sử. Cuốn sách tái hiện những cuộc đối đầu hùng tráng trên biển, nơi chiến lược quân sự, công nghệ và lòng dũng cảm được thử thách đến cùng cực. Qua phân tích chi tiết về bối cảnh, diễn biến và hậu quả, độc giả sẽ hiểu rõ vai trò quyết định của hải quân trong việc định hình số phận các quốc gia. Từ thời đại thuyền buồm đến tàu sân bay hiện đại, đây là bức tranh toàn cảnh về lịch sử chiến tranh hải quân đầy kịch tính và bài học chiến lược sâu sắc.',
    pdfAssetPath:
        'assets/pdfs/Nhung Tran Hai Chien Noi Tieng The Gioi - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book12',
    title: 'Những Vụ Án Nổi Tiếng Trên Thế Giới',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book12.png',
    categoryId: 'cat8',
    description:
        'Bước vào thế giới đen tối của tội phạm học qua những vụ án có thật đầy bí ẩn. Từ Jack the Ripper bí ẩn ở London thế kỷ 19, vụ bắt cóc con trai phi công Lindbergh, đến những vụ án giết người hàng loạt rúng động thế kỷ 20 - mỗi câu chuyện đều được tái hiện chi tiết với hồ sơ điều tra thực tế. Cuốn sách không chỉ kể về tội ác mà còn phân tích tâm lý tội phạm, phương pháp điều tra và quá trình phá án. Đây là tài liệu quý giá cho những ai quan tâm đến tội phạm học, tâm lý học pháp lý và nghệ thuật phá án.',
    pdfAssetPath:
        'assets/pdfs/Nhung Vu An Noi Tieng Tren The Gioi - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book13',
    title: 'Tạp San Nghiên Cứu Văn Sử Địa Tập 13',
    author: 'Nhiều Tác Giả',
    coverImageUrl: 'assets/images/book13.png',
    categoryId: 'cat10',
    description:
        'Ấn phẩm học thuật quy tụ những nghiên cứu chuyên sâu từ các học giả hàng đầu về văn học, lịch sử và địa lý Việt Nam. Các bài viết được biên soạn công phu, có cơ sở khoa học vững chắc, từ việc phân tích tác phẩm văn học cổ điển, khảo cứu các sự kiện lịch sử quan trọng, đến nghiên cứu địa lý nhân văn các vùng miền. Đây là tài liệu tham khảo quý giá cho sinh viên, nghiên cứu sinh và những người yêu thích khoa học nhân văn. Mỗi bài viết mở ra góc nhìn mới về di sản văn hóa, giúp hiểu sâu hơn về bản sắc dân tộc qua các thời kỳ lịch sử.',
    pdfAssetPath:
        'assets/pdfs/Tap San Nghien Cuu Van Su Dia Tap 13 - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book14',
    title: 'Ông Già và Biển Cả',
    author: 'Ernest Hemingway',
    coverImageUrl: 'assets/images/book14.png',
    categoryId: 'cat1',
    description:
        'Santiago, ông lão đánh cá gần tám mươi ngày không bắt được con cá nào, quyết tâm ra khơi xa hơn bao giờ hết. Cuộc chiến ba ngày đêm giữa ông và con cá kiếm khổng lồ là biểu tượng của ý chí không khuất phục con người. Dù cuối cùng chỉ mang về bộ xương cá vì bị cá mập tấn công, Santiago đã chứng minh rằng con người có thể bị tiêu diệt nhưng không thể bị đánh bại. Tác phẩm là bản anh hùng ca về phẩm giá, lòng kiên trì và sự cao quý của tinh thần con người khi đối mặt với số phận, được viết bằng văn phong giản dị nhưng đầy sức mạnh.',
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
        'Gia đình Karamazov với ba anh em tính cách hoàn toàn trái ngược - Dmitri nóng nảy, Ivan trí thức và Alyosha thuần khiết - cùng người cha đồi bại. Khi người cha bị sát hại, cuộc điều tra không chỉ vạch trần tội ác mà còn mở ra những cuộc tranh luận triết học sâu sắc về Chúa, đạo đức, tự do và ý nghĩa của sự sống. Dostoevsky khám phá tận cùng tâm hồn con người, từ đức tin đến hoài nghi, từ tình yêu đến hận thù. Đây là đỉnh cao của văn học tâm lý, nơi mỗi nhân vật đại diện cho một triết lý sống khác nhau trong cuộc đấu tranh vĩnh cửu giữa thiện và ác.',
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
        'Toru Watanabe nhớ lại tuổi trẻ Tokyo cuối những năm 60 khi nghe bản nhạc "Norwegian Wood" của Beatles. Câu chuyện về tình yêu đầu với Naoko - người yêu cũ của người bạn đã tự tử, về cuộc gặp gỡ với Midori sôi nổi và năng động. Giữa cái chết, bệnh tật tâm thần và sự mất mát, Toru tìm kiếm ý nghĩa của tình yêu và cuộc sống. Murakami viết về nỗi cô đơn, sự trưởng thành và những vết thương lòng khó lành với giọng văn đầy cảm xúc. Tác phẩm là bức tranh u buồn nhưng đẹp đẽ về tuổi thanh xuân đầy hoài niệm và day dứt.',
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
        'Lịch sử nhân loại được viết nên qua những trận chiến quyết định. Cuốn sách tổng hợp các trận đánh có ảnh hưởng sâu rộng từ thời cổ đại đến hiện đại - từ Marathon, Hastings, Waterloo đến Stalingrad và Normandy. Mỗi trận chiến được phân tích kỹ lưỡng về bối cảnh chính trị, chiến lược quân sự, sức mạnh quân đội và những quyết định của các vị tướng lãnh. Độc giả sẽ hiểu rõ tại sao những trận chiến này định hình số phận của các đế chế, thay đổi bản đồ chính trị thế giới và tác động đến tiến trình văn minh nhân loại.',
    pdfAssetPath:
        'assets/pdfs/Nhung Tran Hai Chien Noi Tieng The Gioi - Nhieu Tac Gia.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book18',
    title: 'Coi Troi Linh Hon',
    author: 'Michael A. Singer',
    coverImageUrl: 'assets/images/book18.png',
    categoryId: 'cat1',
    description:
        'Linh hồn bạn bị giam cầm bởi những suy nghĩ, cảm xúc và nỗi sợ hãi không ngừng nghỉ. Michael A. Singer hướng dẫn cách quan sát bản thân như người ngoài cuộc, nhận ra rằng bạn không phải là những suy nghĩ của mình. Thông qua thiền định và tỉnh thức, bạn có thể giải phóng tâm trí khỏi những ràng buộc tự tạo, mở cửa cho sự bình an và hạnh phúc thực sự. Cuốn sách kết hợp triết học phương Đông và tâm lý học phương Tây, đưa ra lộ trình cụ thể để vượt qua những rào cản nội tâm. Đây là chìa khóa để sống một cuộc đời tự do và trọn vẹn.',
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
        'Thuyền trưởng Ahab mất một chân vì cá voi trắng Moby Dick và dành cả đời để truy tìm con thú khổng lồ này để trả thù. Trên con tàu Pequod, ông lôi kéo thủy thủ đoàn vào hành trình săn lùng đầy ám ảnh xuyên qua đại dương bao la. Tác phẩm không chỉ là câu chuyện phiêu lưu mà còn là sự khám phá triết học sâu sắc về thiện - ác, con người và tự nhiên, định mệnh và tự do. Melville miêu tả chi tiết nghề săn cá voi thế kỷ 19, đan xen những suy tư về ý nghĩa cuộc sống, tạo nên một kiệt tác văn học đồ sộ và phức tạp.',
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
        'Jonathan Harker đến Transylvania để gặp Bá tước Dracula và khám phá ra bí mật kinh hoàng - vị bá tước là ma cà rồng tìm cách xâm nhập nước Anh. Qua nhật ký, thư từ và ghi chép, câu chuyện dần vén màn về sinh vật hút máu bất tử này. Giáo sư Van Helsing cùng nhóm bạn trẻ phải đối mặt với sức mạnh siêu nhiên của Dracula để bảo vệ người thân và ngăn chặn sự lây lan của lời nguyền. Tác phẩm kinh điển Gothic này tạo nên hình ảnh ma cà rồng trong văn hóa đại chúng, kết hợp kinh dị, lãng mạn và phiêu lưu một cách hoàn hảo.',
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
        'Tiểu thuyết "Số Đỏ" của Vũ Trọng Phụng là kiệt tác phê phán xã hội thời thuộc địa. Công trình nghiên cứu này đào sâu vào từng khía cạnh của tác phẩm: bối cảnh lịch sử Hà Nội thập niên 1930, hình tượng nhân vật Xuân Tóc Đỏ - biểu tượng của tầng lớp trung gian ăn bám, kỹ thuật trào phúng cay độc và phong cách hiện thực phê phán của tác giả. Lại Nguyễn Ân phân tích sâu sắc giá trị nghệ thuật, ý nghĩa tư tưởng và vị trí của tác phẩm trong nền văn học Việt Nam hiện đại, đồng thời làm sáng tỏ tầm nhìn xã hội của Vũ Trọng Phụng.',
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
        'Các con vật trong trang trại Manor nổi dậy lật đổ chủ nhà người, xây dựng xã hội của riêng mình theo nguyên tắc "Tất cả súc vật đều bình đẳng". Nhưng dần dần, những con lợn lãnh đạo bắt đầu thay đổi luật lệ, hưởng đặc quyền và biến thành những kẻ độc tài. Cuối cùng, nguyên tắc trở thành "Tất cả súc vật đều bình đẳng, nhưng một số bình đẳng hơn những con khác". Orwell dùng ngụ ngôn động vật để phê phán gay gắt chủ nghĩa toàn trị, sự tha hóa của quyền lực và việc lịch sử bị bóp méo. Tác phẩm là lời cảnh báo vượt thời gian về những nguy hiểm của chuyên chế.',
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
        'Jane Eyre mồ côi, bị ngược đãi ở nhà dì, chịu đựng cuộc sống khắc nghiệt tại trường nội trú. Trưởng thành, cô trở thành gia sư tại Thornfield Hall, nơi cô gặp ông chủ Rochester bí ẩn và phát triển tình cảm sâu sắc. Nhưng bí mật đen tối ẩn giấu trong lâu đài đe dọa hạnh phúc của họ. Tác phẩm là tiếng nói của người phụ nữ độc lập, từ chối sự khuất phục và đòi hỏi bình đẳng trong tình yêu và cuộc sống. Charlotte Bronte tạo nên nhân vật nữ mạnh mẽ, có nguyên tắc và đầy lòng tự trọng - một biểu tượng nữ quyền tiến bộ của văn học thế kỷ 19.',
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
        'Làm thế nào để tiền bạn sinh ra tiền mà không cần làm việc không ngừng nghỉ? Duncan Bannatyne, doanh nhân tự thân thành đạt, chia sẻ triết lý đầu tư thông minh từ kinh nghiệm thực tế. Từ bất động sản, chứng khoán, quỹ đầu tư đến khởi nghiệp kinh doanh - cuốn sách hướng dẫn cách phân bổ tài sản, đánh giá rủi ro và tối ưu hóa lợi nhuận. Không cần nhiều vốn ban đầu, điều quan trọng là hiểu biết, kỷ luật và tư duy dài hạn. Đây là cẩm nang thiết thực để xây dựng tự do tài chính và đạt được thịnh vượng bền vững.',
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
        'Qua cuộc đối thoại giữa một thanh niên và triết gia dựa trên tâm lý học Adler, cuốn sách thách thức những niềm tin cố hữu về cuộc sống. Bạn lo lắng về việc người khác nghĩ gì về mình? Sống để làm hài lòng người khác? Adler cho rằng nguồn gốc mọi rắc rối là mối quan hệ với người khác. Nhưng giải pháp không phải là trốn tránh mà là can đảm sống theo cách của riêng bạn, chấp nhận việc bị ghét nếu cần thiết. Cuốn sách là lời kêu gọi giải phóng bản thân khỏi sự phán xét của xã hội và tìm thấy hạnh phúc thực sự.',
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
        'Trong xã hội tôn vinh người hướng ngoại, người hướng nội thường bị đánh giá thấp. Nhưng Jennifer Kahnweiler chứng minh rằng sự trầm lặng là sức mạnh chứ không phải điểm yếu. Người hướng nội có khả năng lắng nghe sâu sắc, suy nghĩ thấu đáo và xây dựng mối quan hệ chất lượng. Cuốn sách hướng dẫn cách tận dụng những thế mạnh này để lãnh đạo, giao tiếp và thành công trong sự nghiệp. Qua các case study thực tế, tác giả cho thấy nhiều nhà lãnh đạo vĩ đại là người hướng nội. Đây là lời khẳng định giá trị của sự trầm lặng trong thế giới ồn ào.',
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
        'Mỗi ngày chúng ta đối mặt với hàng trăm quyết định lớn nhỏ. Spencer Johnson đưa ra hệ thống đơn giản nhưng mạnh mẽ để đưa ra lựa chọn đúng đắn. Bằng cách đặt ra hai câu hỏi quan trọng: "Điều này có đáp ứng nhu cầu thực sự của tôi?" và "Điều này có thông báo cho tôi điều gì đang thực sự diễn ra?", bạn sẽ thấy rõ hơn con đường phía trước. Cuốn sách giúp phân biệt giữa quyết định dựa trên nhu cầu thực và quyết định dựa trên cái tôi ảo. Từ việc chọn nghề nghiệp, đối tác đến những quyết định hàng ngày - phương pháp này sẽ dẫn bạn đến cuộc sống tốt đẹp hơn.',
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
        'Khả năng thay đổi suy nghĩ là dấu hiệu của trí thông minh chứ không phải sự yếu đuối. Adam Grant, nhà tâm lý học tổ chức hàng đầu, chỉ ra rằng trong thế giới thay đổi nhanh chóng, việc bám víu vào niềm tin cũ có thể cản trở sự phát triển. Thông qua nghiên cứu khoa học và ví dụ thực tế, ông hướng dẫn cách tư duy như nhà khoa học - đặt câu hỏi, kiểm chứng giả thuyết và sẵn sàng thay đổi quan điểm khi có bằng chứng mới. Cuốn sách khuyến khích văn hóa tranh luận lành mạnh, lắng nghe quan điểm trái chiều và học hỏi từ sai lầm để trở nên khôn ngoan hơn.',
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
        'Thiên tài sinh ra hay được tạo nên? Anders Ericsson, chuyên gia nghiên cứu hàng đầu về thành tích đỉnh cao, chứng minh rằng tài năng bẩm sinh không quyết định thành công. Qua hàng thập kỷ nghiên cứu các chuyên gia từ nhiều lĩnh vực - âm nhạc, thể thao, cờ vua, y khoa - ông phát hiện ra "luyện tập có chủ đích" là chìa khóa. Phương pháp này bao gồm đặt mục tiêu cụ thể, tập trung hoàn toàn, nhận phản hồi ngay lập tức và liên tục vượt ra khỏi vùng an toàn. Cuốn sách phá vỡ thần thoại về thiên tài và cho thấy con đường cụ thể để bất kỳ ai cũng có thể đạt trình độ chuyên gia.',
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
        'Thành công không đến từ việc bạn biết bao nhiêu điều mà là bạn quen biết bao nhiêu người - và quan trọng hơn là họ có sẵn lòng giúp đỡ bạn không. Keith Ferrazzi chia sẻ triết lý xây dựng mạng lưới quan hệ dựa trên sự chân thành và cho đi không điều kiện. Thay vì networking hời hợt, hãy tập trung vào việc tạo ra giá trị cho người khác, duy trì mối quan hệ lâu dài và xây dựng cộng đồng hỗ trợ lẫn nhau. Cuốn sách cung cấp các chiến lược cụ thể để kết nối với người khác, duy trì tình bạn và biến những người quen thành đồng minh đáng tin cậy trong sự nghiệp và cuộc sống.',
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
        'Zig Ziglar, một trong những diễn giả động viên vĩ đại nhất mọi thời đại, chia sẻ công thức đã được kiểm chứng để đạt đến đỉnh cao trong cuộc sống. Cuốn sách hướng dẫn cách đặt mục tiêu rõ ràng, xây dựng kế hoạch cụ thể và duy trì động lực trong suốt hành trình. Ziglar nhấn mạnh tầm quan trọng của thái độ tích cực, sức mạnh của lời nói khẳng định và việc xây dựng thói quen tốt. Qua các câu chuyện truyền cảm hứng và bài tập thực hành, bạn sẽ học cách phát triển toàn diện các khía cạnh: sự nghiệp, tài chính, sức khỏe, gia đình và tinh thần để trở thành phiên bản tốt nhất của chính mình.',
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
        'Trong thời đại thông tin quá tải và tin giả lan tràn, khả năng tư duy phản biện là kỹ năng sống còn. Zoe McKey cung cấp bộ công cụ toàn diện để phân tích thông tin một cách khách quan, nhận diện những lỗi logic trong lập luận, phát hiện ngụy biện và tuyên truyền. Cuốn sách hướng dẫn cách đặt câu hỏi đúng, đánh giá bằng chứng, xem xét nhiều góc độ trước khi kết luận và tránh những thiên kiến tư duy. Qua các bài tập thực hành, bạn sẽ rèn luyện khả năng suy nghĩ độc lập, đưa ra quyết định sáng suốt và không bị thao túng bởi thông tin sai lệch.',
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
        'Sự khác biệt giữa người thành công và người thất bại không phải ở khả năng mà ở kỷ luật tự giác. Patrick Forsyth phân tích tại sao nhiều người biết họ cần làm gì nhưng lại không làm, và cung cấp giải pháp cụ thể để vượt qua sự trì hoãn. Cuốn sách hướng dẫn cách xây dựng thói quen tốt, duy trì động lực lâu dài, quản lý thời gian hiệu quả và tự kiểm soát hành vi. Kỷ luật không phải là hình phạt mà là con đường dẫn đến tự do - tự do làm những gì bạn muốn vì bạn đã xây dựng nền tảng vững chắc. Đây là cuốn sách thiết thực cho ai muốn biến ý định thành hành động.',
    pdfAssetPath:
        'assets/pdfs/Ky luat ban than nen tang cho thanh cong - Patrick Forsyth.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book34',
    title: 'Mưa Đỏ',
    author: 'Chu Lai',
    coverImageUrl: 'assets/images/book34.png',
    categoryId: 'cat5',
    description:
        'Qua ngòi bút sắc sảo và đầy cảm xúc, Chu Lai khắc họa bức tranh sinh động về cuộc sống thường nhật của những con người bình thường trong xã hội Việt Nam đương đại. Mỗi nhân vật là một mảnh ghép của hiện thực - từ người lao động nghèo khổ, trí thức thất chí, đến những tâm hồn cô đơn giữa phố thị. Tác giả không phán xét mà chỉ quan sát và tái hiện với sự thấu cảm sâu sắc những niềm vui, nỗi buồn, hy vọng và thất vọng của con người. "Mùa Đỏ" là tác phẩm chứng tỏ tài năng văn chương của Chu Lai trong việc nắm bắt và diễn đạt tâm tư tình cảm tinh tế của đời sống.',
    pdfAssetPath: 'assets/pdfs/Mua Do - Chu Lai.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book35',
    title: 'Lợi Thế Cạnh Tranh',
    author: 'Michael E. Porter',
    coverImageUrl: 'assets/images/book35.png',
    categoryId: 'cat3',
    description:
        'Michael E. Porter, cha đẻ của chiến lược cạnh tranh hiện đại, trình bày framework phân tích ngành với 5 lực lượng cạnh tranh. Cuốn sách giúp doanh nghiệp hiểu rõ động lực thị trường, vị thế cạnh tranh và cách xây dựng lợi thế bền vững. Porter phân tích các chiến lược dẫn đầu về chi phí, khác biệt hóa và tập trung vào thị trường ngách. Đây là tác phẩm kinh điển không thể thiếu cho bất kỳ ai làm chiến lược kinh doanh.',
    pdfAssetPath: 'assets/pdfs/Loi The Canh tranh - Michael E. Porter.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book36',
    title: 'Những Kẻ Xuất Chúng',
    author: 'Malcolm Gladwell',
    coverImageUrl: 'assets/images/book36.png',
    categoryId: 'cat3',
    description:
        'Malcolm Gladwell khám phá bí mật đằng sau thành công phi thường. Quy tắc 10,000 giờ, lợi thế văn hóa, may mắn về thời điểm sinh - tất cả đều đóng vai trò quan trọng. Cuốn sách phá vỡ thần thoại về tài năng bẩm sinh, chỉ ra rằng thành công là kết quả của nhiều yếu tố kết hợp. Từ Bill Gates đến The Beatles, mỗi câu chuyện đều mang lại góc nhìn mới về con đường đến đỉnh cao.',
    pdfAssetPath: 'assets/pdfs/Nhung Ke Xuat Chung - MalColm Gladwell.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book37',
    title: 'Xây Dựng Để Trường Tồn',
    author: 'Jim Collins & Jerry I. Porras',
    coverImageUrl: 'assets/images/book37.png',
    categoryId: 'cat3',
    description:
        'Nghiên cứu sâu về 18 công ty vĩ đại tồn tại lâu dài, Jim Collins và Jerry Porras tiết lộ những nguyên tắc giúp doanh nghiệp bền vững qua thời gian. Từ việc xây dựng văn hóa cốt lõi, đặt mục tiêu lớn táo bạo (BHAG), đến sự cân bằng giữa bảo tồn và đổi mới - cuốn sách cung cấp blueprint cho tổ chức muốn trường tồn. Đây là kim chỉ nam cho lãnh đạo doanh nghiệp.',
    pdfAssetPath:
        'assets/pdfs/Xay Dung De Truong Ton - Jim Collins & Jerry I. Porras.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book38',
    title: 'Nghĩ Giàu & Làm Giàu',
    author: 'Napoleon Hill',
    coverImageUrl: 'assets/images/book38.png',
    categoryId: 'cat3',
    description:
        'Dựa trên nghiên cứu 20 năm với hơn 500 triệu phú, Napoleon Hill tổng kết 13 nguyên tắc tạo nên thành công và giàu có. Từ sức mạnh của ý nghĩ, đam mê mãnh liệt, đến tư duy nhóm trí tuệ - cuốn sách hé lộ triết lý làm giàu không chỉ về vật chất mà cả tinh thần. Đây là kinh thánh phát triển bản thân được hàng triệu người đọc trên toàn thế giới.',
    pdfAssetPath:
        'assets/pdfs/Nghi Giau Va Lam Giau Microsoft Edge PDF Document.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book39',
    title: 'Elon Musk - Người Đặc Biệt Hàng Đầu',
    author: 'Walter Isaacson',
    coverImageUrl: 'assets/images/book39.png',
    categoryId: 'cat3',
    description:
        'Tiểu sử toàn diện về một trong những doanh nhân táo bạo nhất thế kỷ 21. Từ PayPal, Tesla, SpaceX đến Neuralink - Elon Musk đã liên tục phá vỡ giới hạn và định hình tương lai nhân loại. Walter Isaacson tiết lộ tư duy đổi mới, phong cách lãnh đạo khắc nghiệt và tầm nhìn xa khỏi Trái Đất của Musk. Cuốn sách truyền cảm hứng cho những ai dám mơ lớn và hành động quyết liệt.',
    pdfAssetPath:
        'assets/pdfs/Elon Musk modified 06-11-2025 6-49 (EL FINANCE.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book40',
    title: 'Cơ Phiếu Thường Lợi Nhuận Phi Thường',
    author: 'Philip A. Fisher',
    coverImageUrl: 'assets/images/book40.png',
    categoryId: 'cat3',
    description:
        'Philip Fisher, nhà đầu tư huyền thoại, chia sẻ triết lý đầu tư tăng trưởng dài hạn. 15 điểm cần xem xét khi chọn cổ phiếu, từ chất lượng quản lý, lợi thế cạnh tranh, đến tiềm năng tăng trưởng. Fisher nhấn mạnh tầm quan trọng của nghiên cứu sâu, nắm giữ lâu dài và đầu tư vào doanh nghiệp xuất sắc. Đây là kinh điển đầu tư giá trị được Warren Buffett ca ngợi.',
    pdfAssetPath:
        'assets/pdfs/Co Phieu Thuong Loi Nhuan Phi Thuong - Philip A. Fisher.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book41',
    title: 'Tư Duy Nhanh Và Chậm',
    author: 'Daniel Kahneman',
    coverImageUrl: 'assets/images/book41.png',
    categoryId: 'cat3',
    description:
        'Giải Nobel Kinh tế Daniel Kahneman tiết lộ hai hệ thống tư duy: Hệ thống 1 (nhanh, trực giác) và Hệ thống 2 (chậm, lý trí). Cuốn sách phân tích các thiên kiến nhận thức, lỗi tư duy và cách chúng ảnh hưởng đến quyết định kinh doanh và cuộc sống. Từ hiệu ứng neo, đánh giá quá mức, đến sợ mất mát - Kahneman giúp bạn nhận ra và khắc phục những sai lầm tư duy phổ biến.',
    pdfAssetPath: 'assets/pdfs/Tu duy nhanh va cham - DANIEL KAHNEMAN.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book42',
    title: 'Chiến Lược Đại Dương Xanh',
    author: 'W. Chan Kim & Renee Mauborgne',
    coverImageUrl: 'assets/images/book42.png',
    categoryId: 'cat3',
    description:
        'Thay vì cạnh tranh trong "đại dương đỏ" đầy máu tanh, tại sao không tạo ra "đại dương xanh" - không gian thị trường mới không có đối thủ? Kim và Mauborgne trình bày framework đổi mới giá trị, giúp doanh nghiệp thoát khỏi cuộc chiến giá cả để tạo ra giá trị đột phá. Từ Cirque du Soleil đến Nintendo Wii, các case study chứng minh sức mạnh của chiến lược này. Đây là cẩm nang cho đổi mới đột phá.',
    pdfAssetPath:
        'assets/pdfs/Chien Luoc Dai Duong Xanh - W. Chan Kim & Renee Mauborgne.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book43',
    title: 'Vùng Trời',
    author: 'Tác giả Việt Nam',
    coverImageUrl: 'assets/images/book43.png',
    categoryId: 'cat5',
    description:
        'Một tác phẩm văn học Việt Nam đương đại với giọng văn trong trẻo, kể về cuộc sống vùng quê với những con người chất phác, những mảnh đời bình dị nhưng đầy cảm xúc. Qua từng trang sách, độc giả được đắm chìm vào không gian yên bình của làng quê Việt Nam, nơi tình người còn đậm đà và thiên nhiên hòa quyện cùng cuộc sống. Tác phẩm là lời ca ngợi vẻ đẹp thuần khiết của quê hương và những giá trị văn hóa truyền thống đáng trân trọng.',
    pdfAssetPath: 'assets/pdfs/13322-vung-troi-thuviensach.vn.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book44',
    title: 'Sông',
    author: 'Nguyễn Ngọc Tư',
    coverImageUrl: 'assets/images/book44.png',
    categoryId: 'cat5',
    description:
        'Nguyễn Ngọc Tư, một trong những giọng văn xuất sắc của miền Nam Việt Nam, khắc họa bức tranh sinh động về cuộc sống vùng sông nước. Con sông không chỉ là bối cảnh địa lý mà còn là nhân vật chính, chứng kiến bao câu chuyện đời thường của người dân miệt vườn. Qua ngòi bút mộc mạc nhưng sâu lắng, tác giả tái hiện những niềm vui, nỗi buồn, hy vọng và khát khao của con người miền Tây. Đây là tác phẩm văn học chứa đựng hồn quê đậm đà và tình người ấm áp.',
    pdfAssetPath: 'assets/pdfs/Song - Nguyen Ngoc Tu.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book45',
    title: 'Vợ Chồng A Phủ',
    author: 'Tô Hoài',
    coverImageUrl: 'assets/images/book45.png',
    categoryId: 'cat5',
    description:
        'Tác phẩm kinh điển của nhà văn Tô Hoài kể về cuộc sống của đôi vợ chồng người dân tộc Thái ở Tây Bắc Việt Nam. Câu chuyện về A Phủ và vợ là Tú - một tình yêu đẹp như mơ giữa núi rừng hùng vĩ, về cuộc sống lao động cần cù và những phong tục tập quán độc đáo của đồng bào dân tộc. Qua giọng văn trong sáng, giàu chất thơ, Tô Hoài đã vẽ nên bức tranh sống động về con người và thiên nhiên Tây Bắc, là tác phẩm văn học thiếu nhi và cũng là tài liệu văn hóa quý giá về các dân tộc Việt Nam.',
    pdfAssetPath: 'assets/pdfs/Vo Chong A Phu - To Hoai.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book46',
    title: 'Lịch Sử Tư Tưởng Trung Quốc',
    author: 'Anne Cheng',
    coverImageUrl: 'assets/images/book46.png',
    categoryId: 'cat7',
    description:
        'Anne Cheng, chuyên gia hàng đầu về triết học và văn hóa Trung Quốc, trình bày toàn cảnh lịch sử tư tưởng Trung Hoa từ thời cổ đại đến hiện đại. Từ Khổng Tử, Lão Tử, Mặc Tử đến các trường phái Phật giáo, Tân Nho học - cuốn sách phân tích sâu sắc những quan niệm về con người, xã hội, đạo đức và vũ trụ. Đây là tác phẩm học thuật quan trọng giúp hiểu rõ nền tảng tư tưởng hình thành nên văn minh phương Đông.',
    pdfAssetPath: 'assets/pdfs/Lich su tu tuong Trung Quoc - Anne Cheng.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book47',
    title: 'Sapiens - Lược Sử Loài Người',
    author: 'Yuval Noah Harari',
    coverImageUrl: 'assets/images/book47.png',
    categoryId: 'cat7',
    description:
        'Từ loài vượn tầm thường ở Đông Phi đến chủ nhân hành tinh, Sapiens là hành trình 70,000 năm đầy kỳ diệu của loài người. Yuval Noah Harari giải thích tại sao Homo sapiens vượt qua các loài người khác, vai trò của cách mạng nhận thức, nông nghiệp và khoa học. Cuốn sách đặt ra những câu hỏi triết học sâu sắc về bản chất con người, ý nghĩa hạnh phúc và tương lai của loài người trong kỷ nguyên công nghệ. Đây là kiệt tác lịch sử được đọc rộng rãi nhất thế kỷ 21.',
    pdfAssetPath:
        'assets/pdfs/Sapiens_ Luoc Su Loai Nguoi - Yuval Noah Harari.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book48',
    title: 'Lịch Sử Trung Quốc 5000 Năm - Tập 1',
    author: 'Lâm Hán Đạt & Tào Dư Chương',
    coverImageUrl: 'assets/images/book48.png',
    categoryId: 'cat7',
    description:
        'Bộ sách lịch sử Trung Quốc toàn diện và dễ đọc nhất, tập 1 bắt đầu từ thời thượng cổ với các vị vua huyền thoại, qua các triều đại Hạ, Thương, Chu đến thời Xuân Thu Chiến Quốc. Tác giả không chỉ kể lại các sự kiện lịch sử mà còn phân tích bối cảnh chính trị, kinh tế, văn hóa, và những nhân vật lịch sử nổi tiếng. Đây là tài liệu quý giá cho những ai muốn hiểu sâu về lịch sử và văn minh Trung Hoa.',
    pdfAssetPath:
        'assets/pdfs/Lich Su Trung Quoc 5000 Nam Tap 1 - Lam Han Dat & Tao Du Chuong.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book50',
    title: 'Việt Nam Sử Lược',
    author: 'Trần Trọng Kim',
    coverImageUrl: 'assets/images/book50.png',
    categoryId: 'cat7',
    description:
        'Tác phẩm kinh điển của sử học Việt Nam do danh sĩ Trần Trọng Kim biên soạn. Việt Nam Sử Lược tóm tắt lịch sử dân tộc từ thời Hồng Bàng đến đầu thế kỷ 20, với lối viết giản dị nhưng chính xác, khách quan. Cuốn sách đã trở thành tài liệu giảng dạy và nghiên cứu lịch sử quan trọng, được nhiều thế hệ người Việt tin đọc. Đây là nền tảng kiến thức lịch sử cho bất kỳ ai muốn tìm hiểu về quá khứ hào hùng của dân tộc.',
    pdfAssetPath: 'assets/pdfs/Viet Nam Su Luoc - Tran Trong Kim.pdf',
    isFeatured: true,
  ),
  BookModel(
    id: 'book51',
    title: 'Nam Chí Lược',
    author: 'Lê Tắc',
    coverImageUrl: 'assets/images/book51.png',
    categoryId: 'cat7',
    description:
        'Nam Chí Lược là bộ sử chép đầu tiên của người Việt về đất nước Việt Nam, được Lê Tắc viết vào thế kỷ 13. Tác phẩm ghi chép về địa lý, phong tục, tập quán, các triều đại, những sự kiện lịch sử quan trọng của Đại Việt thời Lý - Trần. Đây là tư liệu lịch sử vô giá, là minh chứng cho ý thức tự chủ và lòng tự hào dân tộc của người Việt từ thời trung đại. Cuốn sách có giá trị cao về mặt học thuật và văn hóa.',
    pdfAssetPath: 'assets/pdfs/Nam Chi Luoc, An - Le Tac.pdf',
    isFeatured: false,
  ),
  BookModel(
    id: 'book49',
    title: 'Bóng Ma Trong Nhà Hát',
    author: 'Gaston Leroux',
    coverImageUrl: 'assets/images/book49.png',
    categoryId: 'cat8',
    description:
        'Tác phẩm kinh điển của văn học trinh thám Pháp, kể về bí ẩn ma quái tại Nhà hát Opera Paris. Một giọng ca thiên thần bí ẩn, những vụ tai nạn kỳ lạ liên tiếp xảy ra, và bóng ma ẩn mình trong hầm sâu của nhà hát. Gaston Leroux khéo léo kết hợp yếu tố trinh thám, kinh dị và tình yêu lãng mạn tạo nên một câu chuyện ly kỳ đầy hấp dẫn. Cuốn sách đã trở thành nguồn cảm hứng cho vô số tác phẩm điện ảnh và sân khấu trên khắp thế giới.',
    pdfAssetPath: 'assets/pdfs/Bong Ma Trong Nha Hat - Gaston Leroux.pdf',
    isFeatured: true,
  ),
];

class AppLanguage {
  static bool isEnglish = false;
  static Function? onLanguageChanged;

  static const Map<String, String> vi = {
    // Bottom Navigation
    'nav_home': 'Trang chủ',
    'nav_discover': 'Khám phá',
    'nav_library': 'Thư viện',
    'nav_challenge': 'Thử thách',
    'nav_profile': 'Hồ sơ',

    // Profile Page - Header & Info
    'profile_title': 'Hồ Sơ',
    'profile_student_name': 'Lê Ngọc Khánh',
    'profile_student_id': 'MSSV: 23010546',
    'profile_project': 'Dự án',
    'profile_project_value': 'BookReader - Ứng dụng đọc sách',
    'profile_class': 'Lớp',
    'profile_class_value': 'Lập trình cho thiết bị di động-1-1-25(N04)',
    'profile_teacher': 'Giảng viên',
    'profile_teacher_value': 'Nguyễn Xuân Quế',

    // Profile Page - Settings
    'profile_settings': 'Cài Đặt',
    'profile_language': 'Ngôn ngữ',
    'profile_dark_mode': 'Chế độ tối',
    'profile_notifications': 'Thông báo',
    'profile_about_app': 'Về ứng dụng',
    'profile_version': 'Version 1.0.0',

    // Profile Page - Actions
    'profile_actions': 'Khác',
    'profile_contact': 'Liên hệ / Góp ý',
    'profile_rate': 'Đánh giá ứng dụng',
    'profile_logout': 'Đăng xuất',

    // Dialog & Messages
    'dialog_about_title': 'Về ứng dụng',
    'dialog_about_app_name': '📚 BookReader App',
    'dialog_about_version': 'Version: 1.0.0',
    'dialog_about_description': 'Ứng dụng đọc sách điện tử',
    'dialog_about_copyright': '© 2025 Lê Ngọc Khánh',
    'dialog_contact_title': 'Liên hệ',
    'dialog_contact_email': '📧 Email: 23010546@st.phenikaa-uni.edu.vn',
    'dialog_contact_phone': '📱 Hotline: 0123456789',
    'dialog_logout_title': 'Đăng xuất',
    'dialog_logout_message': 'Bạn có chắc muốn đăng xuất?',
    'button_close': 'Đóng',
    'button_cancel': 'Hủy',
    'button_logout': 'Đăng xuất',
    'msg_feature_developing': 'Chức năng đang được phát triển',
    'msg_language_changed': 'Đã chuyển sang',
    'msg_rating_thanks': 'Cảm ơn bạn đã đánh giá! ⭐⭐⭐⭐⭐',
    'msg_logged_out': 'Đã đăng xuất',

    // Home Page
    'home_title': 'Sách',
    'home_welcome': '🎉 Chào mừng trở lại!',
    'home_welcome_subtitle': 'Hãy tiếp tục hành trình đọc sách của bạn',
    'home_featured': 'Sách nổi bật',
    'home_view_more': 'Xem thêm',

    // Discover Page
    'discover_title': 'Khám Phá',
    'discover_search_hint': 'Tìm kiếm sách...',
    'discover_all_books': 'Tất cả sách',
    'discover_books_count': 'cuốn sách',

    // Common
    'common_books_unit': 'sách',

    // Library Page
    'library_title': 'Thư Viện',
    'library_favorites': 'Yêu thích',
    'library_bookmarks': 'Đã đánh dấu',
    'library_no_favorites': 'Chưa có sách yêu thích',
    'library_no_bookmarks': 'Chưa có sách đánh dấu',
    'library_add_hint': 'Thêm sách từ trang Khám phá',

    // Challenge Page
    'challenge_title': 'Thử Thách Đọc Sách',
    'challenge_subtitle': 'Đặt mục tiêu và theo dõi tiến độ',
    'challenge_monthly_goal': 'Mục tiêu tháng này',
    'challenge_streak_days': 'ngày',
    'challenge_books_read': 'Sách đã đọc',
    'challenge_target': 'Mục tiêu',
    'challenge_books': 'cuốn',
    'challenge_progress': 'Tiến độ',
    'challenge_completed': 'Hoàn thành',
    'challenge_ongoing': 'Thử thách đang diễn ra',
    'challenge_achievements': 'Thành tích của bạn',
    'challenge_stats': 'Thống kê',
    'challenge_total_read': 'Tổng số sách đã đọc',
    'challenge_total_pages': 'Tổng số trang đã đọc',
    'challenge_reading_time': 'Thời gian đọc',
    'challenge_hours': 'giờ',
    'challenge_unlock': 'Mở khóa',

    // Challenge Items
    'challenge_read_5_books': 'Đọc 5 sách trong tháng',
    'challenge_read_5_books_desc': 'Hoàn thành 5 cuốn sách bất kỳ',
    'challenge_streak_7': 'Streak 7 ngày',
    'challenge_streak_7_desc': 'Đọc sách liên tiếp 7 ngày',
    'challenge_explore_genres': 'Khám phá thể loại mới',
    'challenge_explore_genres_desc': 'Đọc 1 sách từ 3 thể loại khác nhau',
    'challenge_write_reviews': 'Viết 10 đánh giá',
    'challenge_write_reviews_desc': 'Chia sẻ cảm nhận về sách đã đọc',

    // Badges
    'badge_reader': 'Độc giả',
    'badge_persistent': 'Kiên trì',
    'badge_explorer': 'Khám phá',
    'badge_bookworm': 'Mọt sách',
    'badge_speedreader': 'Đọc nhanh',
    'badge_critic': 'Phê bình gia',

    // Categories
    'cat_novel': 'Tiểu thuyết',
    'cat_science': 'Khoa học',
    'cat_business': 'Kinh doanh',
    'cat_skills': 'Kỹ năng',
    'cat_vietnam_literature': 'Văn học Việt Nam',
    'cat_psychology': 'Tâm lý học',
    'cat_history': 'Lịch sử',
    'cat_detective': 'Trinh thám/Hình sự',
    'cat_children': 'Sách thiếu nhi',
    'cat_academic': 'Nghiên cứu học thuật',
    'cat_spiritual': 'Tâm linh - Tôn giáo',
    'cat_health': 'Sức khỏe - Dinh dưỡng',
    'cat_philosophy': 'Triết học',
    'cat_tech': 'Công nghệ',
    'cat_art_culture': 'Nghệ thuật - Văn hóa',
    'cat_sports_travel': 'Thể thao - Du lịch',
    'cat_cooking': 'Nấu ăn - Ẩm thực',
    'cat_law_politics': 'Pháp luật - Chính trị',
    'cat_education': 'Giáo dục - Học tập',
    'cat_memoir_biography': 'Hồi ký - Tiểu sử',

    // Book Detail
    'book_author': 'Tác giả',
    'book_pages': 'trang',
    'book_language': 'Ngôn ngữ',
    'book_description': 'Mô tả',
    'book_read_now': 'Đọc ngay',
    'book_added_favorites': 'Đã thêm vào yêu thích',
    'book_removed_favorites': 'Đã xóa khỏi yêu thích',
    'book_start_reading': 'Bắt đầu đọc',
    'book_added_to_favorites': 'Đã thêm',
    'book_removed_from_favorites': 'Đã xóa',
    'book_to_favorites': 'vào yêu thích',
    'book_from_favorites': 'khỏi yêu thích',
    'book_no_rating': 'Chưa có đánh giá',
    'book_category': 'Danh mục',
    'book_intro': 'Giới thiệu nội dung',
    'book_no_description': 'Chưa có mô tả cho cuốn sách này.',
    'book_expand': 'Xem thêm ↓',
    'book_collapse': 'Thu gọn ↑',
    'book_reviews': 'Đánh giá',
    'book_no_reviews': 'Chưa có đánh giá nào',
    'book_related': 'Ebook tương tự',

    // Discover Page - Additional
    'discover_search_placeholder':
        'Tìm kiếm sách hoặc chọn danh mục để khám phá',
    'discover_no_results': 'Không tìm thấy sách nào',

    // PDF Reader
    'pdf_page': 'Trang',
    'pdf_bookmark_removed': 'Đã xóa bookmark',
    'pdf_bookmark_added': 'Đã đánh dấu trang',
    'pdf_no_pdf': 'Không có file PDF để đọc',
    'pdf_add_file': 'Vui lòng thêm file PDF vào assets',
    'pdf_loading': 'Đang tải file PDF...',
    'pdf_load_error': 'Không thể tải file PDF',

    // Library - Remove messages
    'library_removed_favorite': 'Đã xóa',
    'library_from_favorite': 'khỏi yêu thích',
    'library_removed_bookmark': 'Đã xóa bookmark',
  };

  static const Map<String, String> en = {
    // Bottom Navigation
    'nav_home': 'Home',
    'nav_discover': 'Discover',
    'nav_library': 'Library',
    'nav_challenge': 'Challenge',
    'nav_profile': 'Profile',

    // Profile Page - Header & Info
    'profile_title': 'Profile',
    'profile_student_name': 'Le Ngoc Khanh',
    'profile_student_id': 'Student ID: 23010546',
    'profile_project': 'Project',
    'profile_project_value': 'BookReader - Reading App',
    'profile_class': 'Class',
    'profile_class_value': 'Mobile Programming-1-1-25(N04)',
    'profile_teacher': 'Teacher',
    'profile_teacher_value': 'Nguyen Xuan Que',

    // Profile Page - Settings
    'profile_settings': 'Settings',
    'profile_language': 'Language',
    'profile_dark_mode': 'Dark mode',
    'profile_notifications': 'Notifications',
    'profile_about_app': 'About app',
    'profile_version': 'Version 1.0.0',

    // Profile Page - Actions
    'profile_actions': 'Other',
    'profile_contact': 'Contact / Feedback',
    'profile_rate': 'Rate app',
    'profile_logout': 'Logout',

    // Dialog & Messages
    'dialog_about_title': 'About App',
    'dialog_about_app_name': '📚 BookReader App',
    'dialog_about_version': 'Version: 1.0.0',
    'dialog_about_description': 'E-book reading application',
    'dialog_about_copyright': '© 2025 Le Ngoc Khanh',
    'dialog_contact_title': 'Contact',
    'dialog_contact_email': '📧 Email: 23010546@st.phenikaa-uni.edu.vn',
    'dialog_contact_phone': '📱 Hotline: 0123456789',
    'dialog_logout_title': 'Logout',
    'dialog_logout_message': 'Are you sure you want to logout?',
    'button_close': 'Close',
    'button_cancel': 'Cancel',
    'button_logout': 'Logout',
    'msg_feature_developing': 'Feature is under development',
    'msg_language_changed': 'Switched to',
    'msg_rating_thanks': 'Thank you for rating! ⭐⭐⭐⭐⭐',
    'msg_logged_out': 'Logged out',

    // Home Page
    'home_title': 'Books',
    'home_welcome': '🎉 Welcome back!',
    'home_welcome_subtitle': 'Continue your reading journey',
    'home_featured': 'Featured Books',
    'home_view_more': 'View more',

    // Discover Page
    'discover_title': 'Discover',
    'discover_search_hint': 'Search books...',
    'discover_all_books': 'All Books',
    'discover_books_count': 'books',

    // Common
    'common_books_unit': 'books',

    // Library Page
    'library_title': 'Library',
    'library_favorites': 'Favorites',
    'library_bookmarks': 'Bookmarks',
    'library_no_favorites': 'No favorite books yet',
    'library_no_bookmarks': 'No bookmarked books yet',
    'library_add_hint': 'Add books from Discover page',

    // Challenge Page
    'challenge_title': 'Reading Challenge',
    'challenge_subtitle': 'Set goals and track progress',
    'challenge_monthly_goal': 'Monthly Goal',
    'challenge_streak_days': 'days',
    'challenge_books_read': 'Books Read',
    'challenge_target': 'Target',
    'challenge_books': 'books',
    'challenge_progress': 'Progress',
    'challenge_completed': 'Completed',
    'challenge_ongoing': 'Ongoing Challenges',
    'challenge_achievements': 'Your Achievements',
    'challenge_stats': 'Statistics',
    'challenge_total_read': 'Total books read',
    'challenge_total_pages': 'Total pages read',
    'challenge_reading_time': 'Reading time',
    'challenge_hours': 'hours',
    'challenge_unlock': 'Unlock',

    // Challenge Items
    'challenge_read_5_books': 'Read 5 books this month',
    'challenge_read_5_books_desc': 'Complete any 5 books',
    'challenge_streak_7': '7-day Streak',
    'challenge_streak_7_desc': 'Read books for 7 consecutive days',
    'challenge_explore_genres': 'Explore new genres',
    'challenge_explore_genres_desc': 'Read 1 book from 3 different genres',
    'challenge_write_reviews': 'Write 10 reviews',
    'challenge_write_reviews_desc': 'Share your thoughts on books',

    // Badges
    'badge_reader': 'Reader',
    'badge_persistent': 'Persistent',
    'badge_explorer': 'Explorer',
    'badge_bookworm': 'Bookworm',
    'badge_speedreader': 'Speed Reader',
    'badge_critic': 'Critic',

    // Categories
    'cat_novel': 'Novel',
    'cat_science': 'Science',
    'cat_business': 'Business',
    'cat_skills': 'Skills',
    'cat_vietnam_literature': 'Vietnamese Literature',
    'cat_psychology': 'Psychology',
    'cat_history': 'History',
    'cat_detective': 'Detective/Crime',
    'cat_children': 'Children\'s Books',
    'cat_academic': 'Academic Research',
    'cat_spiritual': 'Spiritual - Religion',
    'cat_health': 'Health - Nutrition',
    'cat_philosophy': 'Philosophy',
    'cat_tech': 'Technology',
    'cat_art_culture': 'Art - Culture',
    'cat_sports_travel': 'Sports - Travel',
    'cat_cooking': 'Cooking - Cuisine',
    'cat_law_politics': 'Law - Politics',
    'cat_education': 'Education - Learning',
    'cat_memoir_biography': 'Memoir - Biography',

    // Book Detail
    'book_author': 'Author',
    'book_pages': 'pages',
    'book_language': 'Language',
    'book_description': 'Description',
    'book_read_now': 'Read now',
    'book_added_favorites': 'Added to favorites',
    'book_removed_favorites': 'Removed from favorites',
    'book_start_reading': 'Start Reading',
    'book_added_to_favorites': 'Added',
    'book_removed_from_favorites': 'Removed',
    'book_to_favorites': 'to favorites',
    'book_from_favorites': 'from favorites',
    'book_no_rating': 'No ratings yet',
    'book_category': 'Category',
    'book_intro': 'Description',
    'book_no_description': 'No description available for this book.',
    'book_expand': 'Read more ↓',
    'book_collapse': 'Show less ↑',
    'book_reviews': 'Reviews',
    'book_no_reviews': 'No reviews yet',
    'book_related': 'Similar Books',

    // Discover Page - Additional
    'discover_search_placeholder':
        'Search for books or select a category to explore',
    'discover_no_results': 'No books found',

    // PDF Reader
    'pdf_page': 'Page',
    'pdf_bookmark_removed': 'Bookmark removed',
    'pdf_bookmark_added': 'Page bookmarked',
    'pdf_no_pdf': 'No PDF file available',
    'pdf_add_file': 'Please add PDF file to assets',
    'pdf_loading': 'Loading PDF file...',
    'pdf_load_error': 'Could not load PDF file',

    // Library - Remove messages
    'library_removed_favorite': 'Removed',
    'library_from_favorite': 'from favorites',
    'library_removed_bookmark': 'Bookmark removed',
  };

  static String get(String key) {
    return isEnglish ? (en[key] ?? key) : (vi[key] ?? key);
  }

  static void toggle() {
    isEnglish = !isEnglish;
  }

  static void setLanguage(bool english) {
    isEnglish = english;
    if (onLanguageChanged != null) {
      onLanguageChanged!();
    }
  }
}

import 'package:flutter/material.dart';
import '../../services/language_service.dart';

class CategoryModel {
  final String id;
  final String name;
  final String icon;
  final int bookCount;
  final Color gradientColor1;
  final Color gradientColor2;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.bookCount,
    required this.gradientColor1,
    required this.gradientColor2,
  });

  String get translatedName {
    final Map<String, String> categoryKeys = {
      'cat1': 'cat_novel',
      'cat2': 'cat_science',
      'cat3': 'cat_business',
      'cat4': 'cat_skills',
      'cat5': 'cat_vietnam_literature',
      'cat6': 'cat_psychology',
      'cat7': 'cat_history',
      'cat8': 'cat_detective',
      'cat9': 'cat_children',
      'cat10': 'cat_academic',
      'cat11': 'cat_spiritual',
      'cat12': 'cat_health',
      'cat13': 'cat_philosophy',
      'cat14': 'cat_tech',
      'cat15': 'cat_art_culture',
      'cat16': 'cat_sports_travel',
      'cat17': 'cat_cooking',
      'cat18': 'cat_law_politics',
      'cat19': 'cat_education',
      'cat20': 'cat_memoir_biography',
    };

    final key = categoryKeys[id];
    return key != null ? AppLanguage.get(key) : name;
  }
}

final List<CategoryModel> sampleCategories = [
  CategoryModel(
    id: 'cat1',
    name: 'Tiểu thuyết',
    icon: '📖',
    bookCount: 124,
    gradientColor1: const Color(0xFF5C6BC0),
    gradientColor2: const Color(0xFF3F51B5),
  ),
  CategoryModel(
    id: 'cat2',
    name: 'Khoa học',
    icon: '🧠',
    bookCount: 89,
    gradientColor1: const Color(0xFF66BB6A),
    gradientColor2: const Color(0xFF4CAF50),
  ),
  CategoryModel(
    id: 'cat3',
    name: 'Kinh doanh',
    icon: '💼',
    bookCount: 67,
    gradientColor1: const Color(0xFFFFB74D),
    gradientColor2: const Color(0xFFFF9800),
  ),
  CategoryModel(
    id: 'cat4',
    name: 'Kỹ năng',
    icon: '⚡',
    bookCount: 78,
    gradientColor1: const Color(0xFFAB47BC),
    gradientColor2: const Color(0xFF9C27B0),
  ),
  CategoryModel(
    id: 'cat5',
    name: 'Văn học Việt Nam',
    icon: '🇻🇳',
    bookCount: 156,
    gradientColor1: const Color(0xFFEF5350),
    gradientColor2: const Color(0xFFF44336),
  ),
  CategoryModel(
    id: 'cat6',
    name: 'Tâm lý học',
    icon: '🧘',
    bookCount: 92,
    gradientColor1: const Color(0xFF26C6DA),
    gradientColor2: const Color(0xFF00BCD4),
  ),
  CategoryModel(
    id: 'cat7',
    name: 'Lịch sử',
    icon: '📜',
    bookCount: 45,
    gradientColor1: const Color(0xFF8D6E63),
    gradientColor2: const Color(0xFF795548),
  ),
  CategoryModel(
    id: 'cat8',
    name: 'Trinh thám/Hình sự',
    icon: '🕵️',
    bookCount: 32,
    gradientColor1: const Color(0xFF546E7A),
    gradientColor2: const Color(0xFF455A64),
  ),
  CategoryModel(
    id: 'cat9',
    name: 'Sách thiếu nhi',
    icon: '🧸',
    bookCount: 28,
    gradientColor1: const Color(0xFFFFB74D),
    gradientColor2: const Color(0xFFFFA726),
  ),
  CategoryModel(
    id: 'cat10',
    name: 'Nghiên cứu học thuật',
    icon: '🎓',
    bookCount: 15,
    gradientColor1: const Color(0xFF7986CB),
    gradientColor2: const Color(0xFF5C6BC0),
  ),
  CategoryModel(
    id: 'cat11',
    name: 'Tâm linh - Tôn giáo',
    icon: '🙏',
    bookCount: 38,
    gradientColor1: const Color(0xFFBA68C8),
    gradientColor2: const Color(0xFF9C27B0),
  ),
  CategoryModel(
    id: 'cat12',
    name: 'Sức khỏe - Dinh dưỡng',
    icon: '🍎',
    bookCount: 52,
    gradientColor1: const Color(0xFF81C784),
    gradientColor2: const Color(0xFF66BB6A),
  ),
  CategoryModel(
    id: 'cat13',
    name: 'Triết học',
    icon: '🤔',
    bookCount: 29,
    gradientColor1: const Color(0xFF90A4AE),
    gradientColor2: const Color(0xFF78909C),
  ),
  CategoryModel(
    id: 'cat14',
    name: 'Công nghệ',
    icon: '💻',
    bookCount: 65,
    gradientColor1: const Color(0xFF64B5F6),
    gradientColor2: const Color(0xFF42A5F5),
  ),
  CategoryModel(
    id: 'cat15',
    name: 'Nghệ thuật - Văn hóa',
    icon: '🎨',
    bookCount: 41,
    gradientColor1: const Color(0xFF4DB6AC),
    gradientColor2: const Color(0xFF26A69A),
  ),
  CategoryModel(
    id: 'cat16',
    name: 'Thể thao - Du lịch',
    icon: '⚽',
    bookCount: 36,
    gradientColor1: const Color(0xFFFF7043),
    gradientColor2: const Color(0xFFFF5722),
  ),
  CategoryModel(
    id: 'cat17',
    name: 'Nấu ăn - Ẩm thực',
    icon: '👨‍🍳',
    bookCount: 24,
    gradientColor1: const Color(0xFFFFB74D),
    gradientColor2: const Color(0xFFFFA726),
  ),
  CategoryModel(
    id: 'cat18',
    name: 'Pháp luật - Chính trị',
    icon: '⚖️',
    bookCount: 42,
    gradientColor1: const Color(0xFF3949AB),
    gradientColor2: const Color(0xFF303F9F),
  ),
  CategoryModel(
    id: 'cat19',
    name: 'Giáo dục - Học tập',
    icon: '📚',
    bookCount: 58,
    gradientColor1: const Color(0xFF5C6BC0),
    gradientColor2: const Color(0xFF3949AB),
  ),
  CategoryModel(
    id: 'cat20',
    name: 'Hồi ký - Tiểu sử',
    icon: '📝',
    bookCount: 33,
    gradientColor1: const Color(0xFFA1887F),
    gradientColor2: const Color(0xFF8D6E63),
  ),
];

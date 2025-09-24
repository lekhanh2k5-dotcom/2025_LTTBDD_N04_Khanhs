// lib/models/category_model.dart
import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String name;
  final String icon; // Emoji hoặc key cho asset
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
}

// Dữ liệu danh mục mẫu - Thay thế bằng dữ liệu thật từ API hoặc database sau này
final List<CategoryModel> sampleCategories = [
  CategoryModel(
    id: 'cat1',
    name: 'Tiểu thuyết',
    icon: '📖',
    bookCount: 124,
    gradientColor1: const Color(0xFF5C6BC0), // Indigo
    gradientColor2: const Color(0xFF3F51B5),
  ),
  CategoryModel(
    id: 'cat2',
    name: 'Khoa học',
    icon: '🧠',
    bookCount: 89,
    gradientColor1: const Color(0xFF66BB6A), // Green
    gradientColor2: const Color(0xFF4CAF50),
  ),
  CategoryModel(
    id: 'cat3',
    name: 'Kinh doanh',
    icon: '💼',
    bookCount: 67,
    gradientColor1: const Color(0xFFFFB74D), // Orange
    gradientColor2: const Color(0xFFFF9800),
  ),
  CategoryModel(
    id: 'cat4',
    name: 'Kỹ năng',
    icon: '⚡',
    bookCount: 78,
    gradientColor1: const Color(0xFFAB47BC), // Purple
    gradientColor2: const Color(0xFF9C27B0),
  ),
  CategoryModel(
    id: 'cat5',
    name: 'Văn học Việt Nam',
    icon: '🇻🇳',
    bookCount: 156,
    gradientColor1: const Color(0xFFEF5350), // Red
    gradientColor2: const Color(0xFFF44336),
  ),
  CategoryModel(
    id: 'cat6',
    name: 'Tâm lý học',
    icon: '🧘',
    bookCount: 92,
    gradientColor1: const Color(0xFF26C6DA), // Cyan
    gradientColor2: const Color(0xFF00BCD4),
  ),
  CategoryModel(
    id: 'cat7',
    name: 'Lịch sử',
    icon: '📜',
    bookCount: 45,
    gradientColor1: const Color(0xFF8D6E63), // Brown
    gradientColor2: const Color(0xFF795548),
  ),
  CategoryModel(
    id: 'cat8',
    name: 'Trinh thám/Hình sự',
    icon: '🕵️',
    bookCount: 32,
    gradientColor1: const Color(0xFF546E7A), // Blue Grey
    gradientColor2: const Color(0xFF455A64),
  ),
  CategoryModel(
    id: 'cat9',
    name: 'Sách thiếu nhi',
    icon: '🧸',
    bookCount: 28,
    gradientColor1: const Color(0xFFFFB74D), // Light Orange
    gradientColor2: const Color(0xFFFFA726),
  ),
  CategoryModel(
    id: 'cat10',
    name: 'Nghiên cứu học thuật',
    icon: '🎓',
    bookCount: 15,
    gradientColor1: const Color(0xFF7986CB), // Indigo Light
    gradientColor2: const Color(0xFF5C6BC0),
  ),
  CategoryModel(
    id: 'cat11',
    name: 'Tâm linh - Tôn giáo',
    icon: '🙏',
    bookCount: 38,
    gradientColor1: const Color(0xFFBA68C8), // Purple Light
    gradientColor2: const Color(0xFF9C27B0),
  ),
  CategoryModel(
    id: 'cat12',
    name: 'Sức khỏe - Dinh dưỡng',
    icon: '🍎',
    bookCount: 52,
    gradientColor1: const Color(0xFF81C784), // Light Green
    gradientColor2: const Color(0xFF66BB6A),
  ),
  CategoryModel(
    id: 'cat13',
    name: 'Triết học',
    icon: '🤔',
    bookCount: 29,
    gradientColor1: const Color(0xFF90A4AE), // Blue Grey Light
    gradientColor2: const Color(0xFF78909C),
  ),
  CategoryModel(
    id: 'cat14',
    name: 'Công nghệ',
    icon: '💻',
    bookCount: 65,
    gradientColor1: const Color(0xFF64B5F6), // Light Blue
    gradientColor2: const Color(0xFF42A5F5),
  ),
  CategoryModel(
    id: 'cat15',
    name: 'Nghệ thuật - Văn hóa',
    icon: '🎨',
    bookCount: 41,
    gradientColor1: const Color(0xFF4DB6AC), // Teal
    gradientColor2: const Color(0xFF26A69A),
  ),
  CategoryModel(
    id: 'cat16',
    name: 'Thể thao - Du lịch',
    icon: '⚽',
    bookCount: 36,
    gradientColor1: const Color(0xFFFF7043), // Orange Red
    gradientColor2: const Color(0xFFFF5722),
  ),
  CategoryModel(
    id: 'cat17',
    name: 'Nấu ăn - Ẩm thực',
    icon: '👨‍🍳',
    bookCount: 24,
    gradientColor1: const Color(0xFFFFB74D), // Warm Orange
    gradientColor2: const Color(0xFFFFA726),
  ),
  CategoryModel(
    id: 'cat18',
    name: 'Pháp luật - Chính trị',
    icon: '⚖️',
    bookCount: 42,
    gradientColor1: const Color(0xFF3949AB), // Dark Blue
    gradientColor2: const Color(0xFF303F9F),
  ),
  CategoryModel(
    id: 'cat19',
    name: 'Giáo dục - Học tập',
    icon: '📚',
    bookCount: 58,
    gradientColor1: const Color(0xFF5C6BC0), // Academic Blue
    gradientColor2: const Color(0xFF3949AB),
  ),
  CategoryModel(
    id: 'cat20',
    name: 'Hồi ký - Tiểu sử',
    icon: '📝',
    bookCount: 33,
    gradientColor1: const Color(0xFFA1887F), // Vintage Brown
    gradientColor2: const Color(0xFF8D6E63),
  ),
];

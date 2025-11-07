# 📚 BookReader - Ứng Dụng Đọc Sách Điện Tử

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.9.2-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)
![License](https://img.shields.io/badge/License-MIT-green)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey)

**Ứng dụng đọc sách điện tử đa nền tảng với giao diện thân thiện và nhiều tính năng hữu ích**

[Demo Video](https://youtu.be/1U3rB18t0E8) 

</div>

---

## 👨‍🎓 Thông Tin Dự Án

- **Sinh viên:** Lê Ngọc Khánh
- **MSSV:** 23010546
- **Lớp:** Lập trình thiết bị di động - 1 - 1 - 25 (N04)
- **Giảng viên:** Nguyễn Xuân Quế
- **Học kỳ:** 1 - Năm học 2025-2026
- **Trường:** Đại học Phenikaa

---

## ✨ Tính Năng

### 📖 Quản Lý & Đọc Sách
- ✅ **Thư viện phong phú:** 50+ đầu sách mẫu qua 9 danh mục
- ✅ **PDF Viewer tích hợp:** Đọc sách PDF trực tiếp trong app
- ✅ **Zoom & Navigation:** Thu phóng, chuyển trang mượt mà
- ✅ **Bookmark:** Đánh dấu trang để đọc tiếp
- ✅ **Jump to Page:** Nhảy đến trang bất kỳ
- ✅ **Fullscreen Mode:** Chế độ toàn màn hình tập trung

### 🗂️ Tổ Chức Nội Dung
- ✅ **9 Danh mục:** Văn học, Kinh doanh, Lịch sử, Trinh thám, Thiếu nhi...
- ✅ **Tìm kiếm:** Tìm sách theo tên, tác giả
- ✅ **Lọc nhanh:** Lọc sách theo danh mục
- ✅ **Danh sách yêu thích:** Lưu sách yêu thích
- ✅ **Lịch sử đọc:** Theo dõi sách đã đánh dấu

### 🎯 Động Viên & Thống Kê
- ✅ **Hệ thống thử thách:** Đặt mục tiêu đọc sách hàng tháng
- ✅ **Progress Tracking:** Theo dõi tiến độ hoàn thành
- ✅ **Badges:** Huy hiệu thành tích động viên
- ✅ **Thống kê:** Số sách đã đọc, số trang, thời gian đọc

### 🌐 Trải Nghiệm Người Dùng
- ✅ **Đa ngôn ngữ:** Tiếng Việt & English
- ✅ **Responsive Design:** Tối ưu cho cả điện thoại và tablet
- ✅ **Material Design 3:** Giao diện hiện đại, thân thiện
- ✅ **Hero Animations:** Chuyển cảnh mượt mà
- ✅ **Dark Mode Ready:** Chuẩn bị chế độ tối (đang phát triển)

---

## 📱 Demo

### Video Demo
🎬 **[Xem video demo đầy đủ tại đây](./demo/)**

---

## 🏗️ Kiến Trúc

### Layered Architecture (Clean Architecture)

```
lib/
├── main.dart                 # Entry point
├── data/                     # Data Layer
│   └── models/              # Data models
│       ├── book.dart
│       ├── category.dart
│       ├── challenge.dart
│       └── badge.dart
├── services/                 # Service Layer
│   ├── language_service.dart
│   ├── favorites_manager.dart
│   └── bookmarks_manager.dart
└── ui/                       # Presentation Layer
    ├── features/
    │   ├── home/            # Home feature
    │   ├── discover/        # Discover feature
    │   ├── book/            # Book detail & reader
    │   ├── library/         # Library feature
    │   ├── challenge/       # Challenge feature
    │   └── profile/         # Profile feature
    └── shared/              # Shared widgets
        └── widgets/
---

## 🛠️ Công Nghệ

### Framework & Ngôn Ngữ
- **Flutter:** 3.9.2
- **Dart:** 3.0+
- **Material Design:** 3

### Packages Chính
```yaml
dependencies:
  flutter:
    sdk: flutter
  syncfusion_flutter_pdfviewer: ^27.1.53  # PDF viewer
  cupertino_icons: ^1.0.8                 # iOS icons
```

### Tools & IDE
- **VS Code** / Android Studio
- **Git** & GitHub
- **Flutter DevTools**

---

## 🚀 Cài Đặt

### Yêu Cầu Hệ Thống
- Flutter SDK ≥ 3.9.2
- Dart SDK ≥ 3.0.0
- Android Studio / VS Code
- Git

### Clone Repository
```bash
git clone https://github.com/lekhanh2k5-dotcom/2025_LTTBDD_N04_Khanhs.git
cd 2025_LTTBDD_N04_Khanhs/code
```

### Cài Đặt Dependencies
```bash
flutter pub get
```

### Chạy Ứng Dụng
```bash
# Chạy trên Android
flutter run

# Chạy trên iOS (cần macOS)
flutter run

# Chạy trên Chrome (web)
flutter run -d chrome
```

### Build APK/IPA
```bash
# Build APK (Android)
flutter build apk --release

# Build App Bundle (Android)
flutter build appbundle

# Build IPA (iOS - cần macOS)
flutter build ios --release
```

---

## 📂 Cấu Trúc Thư Mục

```
2025_LTTBDD_N04_Khanhs/
├── code/                    # Source code
│   ├── lib/                # Dart code
│   ├── assets/             # Assets (images, PDFs, fonts)
│   ├── android/            # Android config
│   ├── ios/                # iOS config
│   └── pubspec.yaml        # Dependencies
├── demo/                    # Video demo
├── report/                  # Báo cáo đồ án
├── slide/                   # Slide thuyết trình
└── README.md               # This file
```

---

## 📊 Số Liệu Dự Án

- **Tổng số dòng code:** ~15,000 lines
- **Số lượng màn hình:** 9 screens
- **Số lượng widgets:** 50+ custom widgets
- **Số danh mục:** 20 categories
- **Số sách mẫu:** 50 books
- **Ngôn ngữ hỗ trợ:** 2 (Việt, Anh)
- **Số file PDF:** 40+ files

---

## 🎯 Kế Hoạch Phát Triển

### Phase 1 (Đã Hoàn Thành) ✅
- [x] Thiết kế UI/UX
- [x] Xây dựng các màn hình chính
- [x] Tích hợp PDF viewer
- [x] Quản lý yêu thích & bookmark
- [x] Đa ngôn ngữ
- [x] Responsive design

### Phase 2 (Tương Lai) 🚧
- [ ] Backend & Database thực tế
- [ ] Đăng nhập/Đăng ký người dùng
- [ ] Đồng bộ đám mây
- [ ] Chế độ tối (Dark Mode)
- [ ] Thông báo push
- [ ] Chia sẻ mạng xã hội
- [ ] Tải sách từ bên ngoài
- [ ] Ghi chú & highlight trong sách
- [ ] Thống kê thực tế theo thời gian
- [ ] Mục tiêu đọc sách tương tác

---

## 🤝 Đóng Góp

Dự án này là đồ án môn học, hiện không nhận đóng góp từ bên ngoài. Tuy nhiên, mọi ý kiến đóng góp đều được hoan nghênh!

---


## 📧 Liên Hệ

- **Email:** 23010546@st.phenikaa-uni.edu.vn
- **GitHub:** [@lekhanh2k5-dotcom](https://github.com/lekhanh2k5-dotcom)
- **Trường:** Đại học Phenikaa

---

## 🙏 Lời Cảm Ơn

Cảm ơn thầy **Nguyễn Xuân Quế** và các bạn trong lớp **Lập trình thiết bị di động N04** đã hỗ trợ trong quá trình thực hiện đồ án này.

Cảm ơn cộng đồng Flutter Việt Nam và các tài nguyên mã nguồn mở đã giúp đỡ trong quá trình học tập và phát triển.

---

<div align="center">

**⭐ Nếu thấy dự án hữu ích, hãy cho một star nhé! ⭐**

Made with ❤️ by Lê Ngọc Khánh

</div>

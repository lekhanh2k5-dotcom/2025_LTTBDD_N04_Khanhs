import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDarkMode = false;
  bool _isNotificationEnabled = true;
  String _selectedLanguage = 'Tiếng Việt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  _buildStudentInfoCard(),
                  const SizedBox(height: 16),
                  _buildSettingsSection(),
                  const SizedBox(height: 16),
                  _buildActionsSection(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 80,
      color: const Color(0xFF8D6E63),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(Icons.account_circle, color: Colors.white, size: 28),
              const SizedBox(width: 12),
              const Text(
                'Tài khoản',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStudentInfoCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF8D6E63), Color(0xFFA1887F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person, size: 60, color: Colors.white),
          ),
          const SizedBox(height: 16),
          const Text(
            'Lê Ngọc Khánh',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'MSSV: 23010546',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Divider(color: Colors.white38, thickness: 1),
          const SizedBox(height: 16),
          _buildInfoRow(
            Icons.menu_book,
            'Dự án',
            'BookReader - Ứng dụng đọc sách',
          ),
          const SizedBox(height: 12),
          _buildInfoRow(
            Icons.class_,
            'Lớp',
            'Lập trình cho thiết bị di động-1-1-25(N04)',
          ),
          const SizedBox(height: 12),
          _buildInfoRow(Icons.school, 'Giảng viên', 'Nguyễn Xuân Quế'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 12, color: Colors.white70),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSettingsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildSettingTile(
            icon: Icons.language,
            title: 'Ngôn ngữ',
            trailing: DropdownButton<String>(
              value: _selectedLanguage,
              underline: const SizedBox(),
              items: ['Tiếng Việt', 'English'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: const TextStyle(fontSize: 14)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedLanguage = newValue;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Đã chuyển sang $newValue'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
              },
            ),
          ),
          const Divider(height: 1),
          _buildSettingTile(
            icon: Icons.dark_mode,
            title: 'Chế độ tối',
            trailing: Switch(
              value: _isDarkMode,
              activeColor: const Color(0xFF8D6E63),
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      value ? 'Đã bật chế độ tối' : 'Đã tắt chế độ tối',
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1),
          _buildSettingTile(
            icon: Icons.notifications,
            title: 'Thông báo',
            trailing: Switch(
              value: _isNotificationEnabled,
              activeColor: const Color(0xFF8D6E63),
              onChanged: (value) {
                setState(() {
                  _isNotificationEnabled = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      value ? 'Đã bật thông báo' : 'Đã tắt thông báo',
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1),
          _buildSettingTile(
            icon: Icons.info_outline,
            title: 'Về ứng dụng',
            subtitle: 'Version 1.0.0',
            trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Về ứng dụng'),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('📚 BookReader App'),
                      SizedBox(height: 8),
                      Text('Version: 1.0.0'),
                      SizedBox(height: 8),
                      Text('Ứng dụng đọc sách điện tử'),
                      SizedBox(height: 8),
                      Text('© 2025 Lê Ngọc Khánh'),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Đóng'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActionsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildActionTile(
            icon: Icons.email_outlined,
            title: 'Liên hệ / Góp ý',
            iconColor: Colors.blue,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Liên hệ'),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('📧 Email: 23010546@st.phenikaa-uni.edu.vn'),
                      SizedBox(height: 8),
                      Text('📱 Hotline: 0123456789'),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Đóng'),
                    ),
                  ],
                ),
              );
            },
          ),
          const Divider(height: 1),
          _buildActionTile(
            icon: Icons.star_outline,
            title: 'Đánh giá ứng dụng',
            iconColor: Colors.orange,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Cảm ơn bạn đã đánh giá! ⭐⭐⭐⭐⭐'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
          const Divider(height: 1),
          _buildActionTile(
            icon: Icons.logout,
            title: 'Đăng xuất',
            iconColor: Colors.red,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Đăng xuất'),
                  content: const Text('Bạn có chắc muốn đăng xuất?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Hủy'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Đã đăng xuất'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: const Text(
                        'Đăng xuất',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required Widget trailing,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFF8D6E63).withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: const Color(0xFF8D6E63), size: 24),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            )
          : null,
      trailing: trailing,
      onTap: onTap,
    );
  }

  Widget _buildActionTile({
    required IconData icon,
    required String title,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: iconColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: iconColor, size: 24),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: title == 'Đăng xuất' ? Colors.red : Colors.black87,
        ),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }
}

import 'package:flutter/material.dart';

class ChallengeModel {
  final String id;
  final String title;
  final String description;
  final IconData icon;
  final int current;
  final int target;
  final String reward;

  ChallengeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.current,
    required this.target,
    required this.reward,
  });

  double get progress => current / target;
  bool get isCompleted => current >= target;
}

class BadgeModel {
  final String id;
  final String name;
  final IconData icon;
  final bool unlocked;

  BadgeModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.unlocked,
  });
}

class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  static final List<ChallengeModel> _challenges = [
    ChallengeModel(
      id: 'c1',
      title: 'Đọc 5 sách trong tháng',
      description: 'Hoàn thành 5 cuốn sách bất kỳ',
      icon: Icons.auto_stories,
      current: 3,
      target: 5,
      reward: '🏆 Huy hiệu Độc giả',
    ),
    ChallengeModel(
      id: 'c2',
      title: 'Streak 7 ngày',
      description: 'Đọc sách liên tiếp 7 ngày',
      icon: Icons.local_fire_department,
      current: 4,
      target: 7,
      reward: '🔥 Huy hiệu Kiên trì',
    ),
    ChallengeModel(
      id: 'c3',
      title: 'Khám phá thể loại mới',
      description: 'Đọc 1 sách từ 3 thể loại khác nhau',
      icon: Icons.explore,
      current: 2,
      target: 3,
      reward: '🌟 Huy hiệu Khám phá',
    ),
    ChallengeModel(
      id: 'c4',
      title: 'Viết 10 đánh giá',
      description: 'Chia sẻ cảm nhận về sách đã đọc',
      icon: Icons.rate_review,
      current: 5,
      target: 10,
      reward: '✍️ Huy hiệu Phê bình gia',
    ),
  ];

  static final List<BadgeModel> _badges = [
    BadgeModel(id: 'b1', name: 'Người mới', icon: Icons.star, unlocked: true),
    BadgeModel(
      id: 'b2',
      name: 'Độc giả',
      icon: Icons.auto_stories,
      unlocked: true,
    ),
    BadgeModel(
      id: 'b3',
      name: 'Kiên trì',
      icon: Icons.local_fire_department,
      unlocked: false,
    ),
    BadgeModel(
      id: 'b4',
      name: 'Khám phá',
      icon: Icons.explore,
      unlocked: false,
    ),
    BadgeModel(
      id: 'b5',
      name: 'Chuyên gia',
      icon: Icons.workspace_premium,
      unlocked: false,
    ),
    BadgeModel(
      id: 'b6',
      name: 'Phê bình gia',
      icon: Icons.rate_review,
      unlocked: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildReadingGoal(),
                      _buildSectionTitle('Thử thách đang diễn ra'),
                      _buildChallengesList(),
                      _buildSectionTitle('Thành tích của bạn'),
                      _buildBadgesGrid(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
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
              const Icon(Icons.emoji_events, color: Colors.white, size: 28),
              const SizedBox(width: 12),
              const Text(
                'Thử thách',
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

  Widget _buildReadingGoal() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Mục tiêu tháng này',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '4 ngày',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                ' / 5',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'sách',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: 0.6,
              minHeight: 8,
              backgroundColor: Colors.white.withOpacity(0.3),
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '60% hoàn thành - Cố lên! 💪',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildChallengesList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: _challenges.length,
      itemBuilder: (context, index) {
        return _buildChallengeCard(_challenges[index]);
      },
    );
  }

  Widget _buildChallengeCard(ChallengeModel challenge) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: challenge.isCompleted
                        ? Colors.green.withOpacity(0.1)
                        : const Color(0xFF8D6E63).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    challenge.icon,
                    color: challenge.isCompleted
                        ? Colors.green
                        : const Color(0xFF8D6E63),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        challenge.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        challenge.description,
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                if (challenge.isCompleted)
                  const Icon(Icons.check_circle, color: Colors.green, size: 28),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: challenge.progress,
                      minHeight: 8,
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        challenge.isCompleted
                            ? Colors.green
                            : const Color(0xFF8D6E63),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '${challenge.current}/${challenge.target}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.card_giftcard, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  challenge.reward,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBadgesGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: _badges.length,
        itemBuilder: (context, index) {
          return _buildBadgeItem(_badges[index]);
        },
      ),
    );
  }

  Widget _buildBadgeItem(BadgeModel badge) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            badge.icon,
            size: 40,
            color: badge.unlocked ? const Color(0xFF8D6E63) : Colors.grey[300],
          ),
          const SizedBox(height: 8),
          Text(
            badge.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: badge.unlocked ? Colors.black87 : Colors.grey[400],
            ),
          ),
          if (badge.unlocked)
            const Icon(Icons.check_circle, size: 16, color: Colors.green),
        ],
      ),
    );
  }
}

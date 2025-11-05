import 'package:flutter/material.dart';
import '../../utils/app_language.dart';

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

final List<BadgeModel> sampleBadges = [
  BadgeModel(
    id: 'b1',
    name: AppLanguage.isEnglish ? 'Beginner' : 'Người mới',
    icon: Icons.star,
    unlocked: true,
  ),
  BadgeModel(
    id: 'b2',
    name: AppLanguage.get('badge_reader'),
    icon: Icons.auto_stories,
    unlocked: true,
  ),
  BadgeModel(
    id: 'b3',
    name: AppLanguage.get('badge_persistent'),
    icon: Icons.local_fire_department,
    unlocked: false,
  ),
  BadgeModel(
    id: 'b4',
    name: AppLanguage.get('badge_explorer'),
    icon: Icons.explore,
    unlocked: false,
  ),
  BadgeModel(
    id: 'b5',
    name: AppLanguage.get('badge_bookworm'),
    icon: Icons.workspace_premium,
    unlocked: false,
  ),
  BadgeModel(
    id: 'b6',
    name: AppLanguage.get('badge_critic'),
    icon: Icons.rate_review,
    unlocked: false,
  ),
];

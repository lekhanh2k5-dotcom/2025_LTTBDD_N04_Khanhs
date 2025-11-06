import 'package:flutter/material.dart';
import '../../services/language_service.dart';

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

List<ChallengeModel> get sampleChallenges => [
  ChallengeModel(
    id: 'c1',
    title: AppLanguage.get('challenge_read_5_books'),
    description: AppLanguage.get('challenge_read_5_books_desc'),
    icon: Icons.auto_stories,
    current: 3,
    target: 5,
    reward: '🏆 ${AppLanguage.get('badge_reader')}',
  ),
  ChallengeModel(
    id: 'c2',
    title: AppLanguage.get('challenge_streak_7'),
    description: AppLanguage.get('challenge_streak_7_desc'),
    icon: Icons.local_fire_department,
    current: 4,
    target: 7,
    reward: '🔥 ${AppLanguage.get('badge_persistent')}',
  ),
  ChallengeModel(
    id: 'c3',
    title: AppLanguage.get('challenge_explore_genres'),
    description: AppLanguage.get('challenge_explore_genres_desc'),
    icon: Icons.explore,
    current: 2,
    target: 3,
    reward: '🌟 ${AppLanguage.get('badge_explorer')}',
  ),
  ChallengeModel(
    id: 'c4',
    title: AppLanguage.get('challenge_write_reviews'),
    description: AppLanguage.get('challenge_write_reviews_desc'),
    icon: Icons.rate_review,
    current: 5,
    target: 10,
    reward: '✍️ ${AppLanguage.get('badge_critic')}',
  ),
];

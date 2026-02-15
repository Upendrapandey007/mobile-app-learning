import '../models/learning_level.dart';

class SeedData {
  static const List<LearningLevel> levels = [
    LearningLevel(
      id: 'basic',
      title: 'Basic',
      description: 'Sentence structure, core grammar, vocabulary, and pronunciation basics.',
      completionPercent: 65,
    ),
    LearningLevel(
      id: 'intermediate',
      title: 'Intermediate',
      description: 'IELTS question types, reading strategies, and writing structures.',
      completionPercent: 20,
    ),
    LearningLevel(
      id: 'advanced',
      title: 'Advanced',
      description: 'Full mock tests, time management, and Band 7+ techniques.',
      completionPercent: 0,
    ),
  ];

  static const String weakSkill = 'Pronunciation';
  static const int streakDays = 8;
  static const int dailyGoalMinutes = 30;
}

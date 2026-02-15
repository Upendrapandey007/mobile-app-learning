import 'package:flutter/material.dart';

import '../data/seed_data.dart';
import '../widgets/dashboard_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final current = SeedData.levels.first;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('IELTS Path')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
        children: [
          const SectionHeader(
            title: 'Welcome back',
            subtitle: 'Step-by-step IELTS preparation from foundation to Band 7+.',
          ),
          const SizedBox(height: 16),
          ProgressCard(
            progress: current.completionPercent,
            onContinue: () {},
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const StatCard(
                title: 'Daily Goal',
                value: '${SeedData.dailyGoalMinutes} min',
                icon: Icons.track_changes_outlined,
              ),
              SizedBox(width: 12),
              const StatCard(
                title: 'Streak',
                value: '${SeedData.streakDays} days',
                icon: Icons.local_fire_department_outlined,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              leading: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: const Color(0xFFFEE2E2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.warning_amber_rounded, color: Color(0xFFB91C1C)),
              ),
              title: const Text('Weak Skill Highlight'),
              subtitle: Text(SeedData.weakSkill),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: 18),
          Text('Learning Path', style: theme.textTheme.titleMedium),
          const SizedBox(height: 10),
          ...SeedData.levels.map(
            (level) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  title: Text(level.title),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(level.description),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E8F0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('${level.completionPercent}%'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

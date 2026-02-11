import 'package:flutter/material.dart';

import '../data/seed_data.dart';
import '../widgets/dashboard_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final current = SeedData.levels.first;

    return Scaffold(
      appBar: AppBar(title: const Text('IELTS Path')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Step-by-step IELTS preparation from foundation to Band 7+.',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          ProgressCard(
            progress: current.completionPercent,
            onContinue: () {},
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              StatCard(title: 'Daily Goal', value: '${SeedData.dailyGoalMinutes} min'),
              SizedBox(width: 12),
              StatCard(title: 'Streak', value: '${SeedData.streakDays} days'),
            ],
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.warning_amber_rounded),
              title: const Text('Weak Skill Highlight'),
              subtitle: Text(SeedData.weakSkill),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: 12),
          Text('Learning Path', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          ...SeedData.levels.map(
            (level) => Card(
              child: ListTile(
                title: Text(level.title),
                subtitle: Text(level.description),
                trailing: Text('${level.completionPercent}%'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

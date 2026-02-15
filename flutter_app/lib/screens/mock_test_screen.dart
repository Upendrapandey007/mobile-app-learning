import 'package:flutter/material.dart';

import '../widgets/dashboard_cards.dart';

class MockTestScreen extends StatelessWidget {
  const MockTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mock Test')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
        children: const [
          SectionHeader(
            title: 'Timed Practice',
            subtitle: 'Simulate real IELTS pressure with section-based timers and review.',
          ),
          SizedBox(height: 14),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(child: Icon(Icons.timer_outlined)),
              title: Text('Full Mock Test'),
              subtitle: Text('Listening, Reading, Writing, and Speaking workflow.'),
              trailing: Icon(Icons.play_arrow_rounded),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(child: Icon(Icons.analytics_outlined)),
              title: Text('Latest Result'),
              subtitle: Text('Estimated Band: 6.5 • Review feedback and weak areas.'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}

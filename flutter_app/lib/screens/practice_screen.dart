import 'package:flutter/material.dart';

import '../widgets/dashboard_cards.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practice')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
        children: const [
          SectionHeader(
            title: 'AI Speaking Coach',
            subtitle: 'Practice daily topics and improve fluency, grammar, and pronunciation.',
          ),
          SizedBox(height: 14),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(child: Icon(Icons.mic_none_rounded)),
              title: Text('Daily Speaking Topic'),
              subtitle: Text('Describe a place you enjoy visiting on weekends.'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(child: Icon(Icons.graphic_eq_rounded)),
              title: Text('Exam Simulation Mode'),
              subtitle: Text('IELTS speaking Parts 1–3 with timer and prompts.'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(child: Icon(Icons.record_voice_over_outlined)),
              title: Text('Pronunciation Trainer'),
              subtitle: Text('Word stress, intonation, and comparison mode drills.'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}

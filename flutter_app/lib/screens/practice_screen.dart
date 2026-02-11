import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practice')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              title: Text('Daily Speaking Topic'),
              subtitle: Text('Describe a place you enjoy visiting on weekends.'),
              trailing: Icon(Icons.mic_none_rounded),
            ),
          ),
          SizedBox(height: 12),
          Card(
            child: ListTile(
              title: Text('Pronunciation Trainer'),
              subtitle: Text('Word stress and intonation drills.'),
            ),
          ),
        ],
      ),
    );
  }
}

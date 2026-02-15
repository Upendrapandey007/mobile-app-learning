import 'package:flutter/material.dart';

import '../data/mock_speaking_result.dart';
import '../models/speaking_result.dart';
import 'speaking_result_screen.dart';

class SpeakingSessionScreen extends StatelessWidget {
  final String topic;

  const SpeakingSessionScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Speaking Session')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                title: const Text('Topic'),
                subtitle: Text(topic),
                trailing: const Icon(Icons.timer_outlined),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Speak naturally for 1–2 minutes. Your estimated band and detailed feedback will appear after analysis.',
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFDDE9FF),
                    border: Border.all(color: const Color(0xFF0D3B8E), width: 2),
                  ),
                  child: const Icon(Icons.mic_none_rounded, size: 72, color: Color(0xFF0D3B8E)),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  final result = SpeakingResult.fromJson(mockSpeakingResultJson);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SpeakingResultScreen(result: result),
                    ),
                  );
                },
                icon: const Icon(Icons.analytics_outlined),
                label: const Text('Analyze Recording (Mock)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

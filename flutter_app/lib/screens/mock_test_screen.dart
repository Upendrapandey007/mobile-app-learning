import 'package:flutter/material.dart';

class MockTestScreen extends StatelessWidget {
  const MockTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mock Test')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Timed IELTS Mock Test', style: TextStyle(fontWeight: FontWeight.w600)),
                SizedBox(height: 8),
                Text('Practice under exam conditions with section timers and progress tracking.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/speaking_result.dart';

class SpeakingResultScreen extends StatelessWidget {
  final SpeakingResult result;

  const SpeakingResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Speaking Result')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Estimated Band', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text(
                    result.estimatedBand.toStringAsFixed(1),
                    style: theme.textTheme.headlineSmall?.copyWith(fontSize: 44),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          _ScoreGrid(result: result),
          const SizedBox(height: 12),
          _MetricCard(result: result),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Top 3 Suggestions', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 10),
                  ...result.feedback.map(
                    (item) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(Icons.circle, size: 8),
                          ),
                          const SizedBox(width: 8),
                          Expanded(child: Text(item)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ScoreGrid extends StatelessWidget {
  final SpeakingResult result;

  const _ScoreGrid({required this.result});

  @override
  Widget build(BuildContext context) {
    final items = [
      ('Fluency', result.fluency),
      ('Lexical', result.lexical),
      ('Grammar', result.grammar),
      ('Pronunciation', result.pronunciation),
    ];

    return GridView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.8,
      ),
      itemBuilder: (_, index) {
        final item = items[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.$1),
                const SizedBox(height: 6),
                Text(
                  item.$2.toStringAsFixed(1),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _MetricCard extends StatelessWidget {
  final SpeakingResult result;

  const _MetricCard({required this.result});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Speech Metrics', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            _row('Words per minute', '${result.wordsPerMinute}'),
            _row('Average pause', '${result.pauseAverage}s'),
            _row('Filler count', '${result.fillerCount}'),
            _row('Lexical diversity', result.lexicalDiversity.toStringAsFixed(2)),
            _row('Grammar error rate', result.grammarErrorRate.toStringAsFixed(2)),
            _row('Pronunciation accuracy', result.pronunciationAccuracy.toStringAsFixed(2)),
          ],
        ),
      ),
    );
  }

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(child: Text(label)),
          Text(value),
        ],
      ),
    );
  }
}

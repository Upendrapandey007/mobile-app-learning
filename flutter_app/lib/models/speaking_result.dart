class SpeakingResult {
  final double estimatedBand;
  final double fluency;
  final double lexical;
  final double grammar;
  final double pronunciation;
  final int wordsPerMinute;
  final double pauseAverage;
  final int fillerCount;
  final double lexicalDiversity;
  final double grammarErrorRate;
  final double pronunciationAccuracy;
  final List<String> feedback;

  const SpeakingResult({
    required this.estimatedBand,
    required this.fluency,
    required this.lexical,
    required this.grammar,
    required this.pronunciation,
    required this.wordsPerMinute,
    required this.pauseAverage,
    required this.fillerCount,
    required this.lexicalDiversity,
    required this.grammarErrorRate,
    required this.pronunciationAccuracy,
    required this.feedback,
  });

  factory SpeakingResult.fromJson(Map<String, dynamic> json) {
    final scores = json['scores'] as Map<String, dynamic>;
    final metrics = json['metrics'] as Map<String, dynamic>;

    return SpeakingResult(
      estimatedBand: (json['estimated_band'] as num).toDouble(),
      fluency: (scores['fluency'] as num).toDouble(),
      lexical: (scores['lexical'] as num).toDouble(),
      grammar: (scores['grammar'] as num).toDouble(),
      pronunciation: (scores['pronunciation'] as num).toDouble(),
      wordsPerMinute: (metrics['words_per_minute'] as num).toInt(),
      pauseAverage: (metrics['pause_average'] as num).toDouble(),
      fillerCount: (metrics['filler_count'] as num).toInt(),
      lexicalDiversity: (metrics['lexical_diversity'] as num).toDouble(),
      grammarErrorRate: (metrics['grammar_error_rate'] as num).toDouble(),
      pronunciationAccuracy: (metrics['pronunciation_accuracy'] as num).toDouble(),
      feedback: (json['feedback'] as List<dynamic>).map((e) => e.toString()).toList(),
    );
  }
}

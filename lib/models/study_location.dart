class StudyLocation {
  final String module;
  final String topic;
  final String subtopic;

  const StudyLocation({
    required this.module,
    required this.topic,
    required this.subtopic,
  });

  Map<String, dynamic> toMap() {
    return {
      'module': module,
      'topic': topic,
      'subtopic': subtopic,
    };
  }

  factory StudyLocation.fromMap(Map<String, dynamic> map) {
    return StudyLocation(
      module: map['module'],
      topic: map['topic'],
      subtopic: map['subtopic'],
    );
  }

  @override
  String toString() {
    return "$module > $topic > $subtopic";
  }
}
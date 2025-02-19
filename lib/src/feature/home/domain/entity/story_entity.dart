class StoryEntity {
  final String title;
  final List<String> paragraphs;

  StoryEntity({required this.title, required this.paragraphs});

  factory StoryEntity.fromMap(Map<String, dynamic> json) {
    return StoryEntity(title: json['title'], paragraphs: List.from(json['paragraphs']));
  }

  Map<String, dynamic> toMap() => {'title': title, 'paragraphs': paragraphs};
}

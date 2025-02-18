
class StorySpecificationsDataEntity {
  String? genre;
  String? theme;
  String? protagonist;
  String? length;

  StorySpecificationsDataEntity({
    this.genre,
    this.theme,
    this.protagonist,
    this.length,

  });

  StorySpecificationsDataEntity copyWith({
    String? genre,
    String? theme,
    String? protagonist,
    String? length,
  }) {
    return StorySpecificationsDataEntity(
   genre: genre ?? this.genre,
      theme: theme??this.theme,
      protagonist: protagonist?? this.protagonist,
      length: length ?? this.length,
    );
  }
}

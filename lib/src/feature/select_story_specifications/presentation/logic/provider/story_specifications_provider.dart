import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:story_teller/src/feature/select_story_specifications/domain/entity/story_specifications_data_entity.dart';

final storySpecificationsProvider = StateNotifierProvider<StorySpecificationsNotifier, StorySpecificationsDataEntity>(
      (ref) => StorySpecificationsNotifier(),
);

class StorySpecificationsNotifier extends StateNotifier<StorySpecificationsDataEntity> {
  StorySpecificationsNotifier() : super(StorySpecificationsDataEntity());

  void setStoryGenre(String data) {
    state = state.copyWith(genre: data);
  }

  void setStoryTheme(String data) {
    state = state.copyWith(theme: data);
  }

  void setStoryLength(String data) {
    state = state.copyWith(length: data);
  }

  void setStoryProtagonist(String data) {
    state = state.copyWith(protagonist: data);
  }

}

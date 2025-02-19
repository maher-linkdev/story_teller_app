import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/logic/provider/story_specifications_provider.dart';

final promptProvider = Provider<String>((ref) {
  final storySpecifications = ref.watch(storySpecificationsProvider);
  return '''
  You are a JSON API.
  Return story based on these specifications, where genre is ${storySpecifications.genre},
  theme is ${storySpecifications.theme}, make the length of story like ${storySpecifications.length},
  and make story protagonist is ${storySpecifications.protagonist} 
       
  return json title for story, and list of story paragraphs.
  *   title (string).
  *   paragraphs` (List<string>).
  Here is an example of the correct JSON format:
  
      {
        "title": "Community",
        "paragraphs":["This is the beginning of para..", "We are in middle of story", "We are at the end"],
      }
    
  return JSON format EXACLTY. Do not include any additional text or explanations outside the JSON structure.
  ''';
});

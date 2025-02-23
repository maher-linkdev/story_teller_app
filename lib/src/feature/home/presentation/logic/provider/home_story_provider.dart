import 'dart:convert';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:story_teller/src/core/utils/strings_util.dart';
import 'package:story_teller/src/feature/home/domain/entity/story_entity.dart';
import 'package:story_teller/src/feature/home/presentation/logic/provider/generative_model_provider.dart';
import 'package:story_teller/src/feature/home/presentation/logic/provider/prompt_provider.dart';

final homeStoryProvider = FutureProvider<StoryEntity>((ref) async {
  final generativeModel = ref.watch(generativeModelProvider);
  final prompt = ref.watch(promptProvider);
  final content = [
    Content.text(prompt),
  ];
  if (generativeModel != null) {
    final response = await generativeModel.generateContent(content);
    if (response.text != null && response!.text!.isNotEmpty) {
      String jsonString = StringsUtil.cleanJsonResponseString(response.text!);

      final json = jsonDecode(jsonString);
      return StoryEntity.fromMap(json);
    }
    throw Exception('No response');
  } else {
    throw Exception("GEMINI API KEY ISN'T SPECIFIED..");
  }
});

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generativeModelProvider = Provider<GenerativeModel?>((_) {
  const String apiKey = String.fromEnvironment('GEMINI_API_KEY', defaultValue: '');

  if (apiKey.isNotEmpty) {
    return GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: apiKey,
    );
  }
  return null;
});


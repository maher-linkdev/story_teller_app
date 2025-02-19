import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generativeModelProvider = Provider<GenerativeModel>(
  (_) => GenerativeModel(
    model: 'gemini-1.5-pro',
    apiKey: "AIzaSyAgE0wj7Qd4-lTkharna5jeKdWhFx0m6kU",
  ),
);

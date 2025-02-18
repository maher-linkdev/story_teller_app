import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final appRouter = AppRouter();
  return appRouter.router;
});

import 'package:designs_app_number_1/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const BasicDesignScreen(),
    ),
    GoRoute(
      path: "/scroll-screen",
      builder: (context, state) => const ScrollDesignScreen(),
    ),
    GoRoute(
      path: "/composite-screen",
      builder: (context, state) => const CompositeDesignScreen(),
    ),
  ],
);

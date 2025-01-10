import 'package:go_router/go_router.dart';
import 'package:s2s_radionica/screens/details_screen.dart';
import 'package:s2s_radionica/screens/home_screen.dart';
import 'package:s2s_radionica/screens/intro_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Intro()),
    GoRoute(path: '/home', builder: (context, state) => const Home()),
    GoRoute(path: '/details', builder: (context, state) => const Details()),
  ],
);

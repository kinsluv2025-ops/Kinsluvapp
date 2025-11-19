import 'package:flutter/material.dart';
import 'pages/splash.dart';
import 'pages/home.dart';
import 'pages/go_live.dart';
import 'pages/host_live.dart';
import 'pages/viewer_live.dart';

class KinsLuvApp extends StatelessWidget {
  const KinsLuvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinsluv Live',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/go_live': (context) => const GoLivePage(),
        // host and viewer routes expect args
        '/host_live': (context) => const HostLivePagePlaceholder(),
        '/viewer_live': (context) => const ViewerLivePagePlaceholder(),
      },
    );
  }
}

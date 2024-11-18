import 'package:fitness_app/views/home_view.dart';
import 'package:fitness_app/views/login_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const FitnessApp(),
    );

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.homeViewId: (context) => const HomeView(),
        LoginView.loginViewId: (context) => const LoginView(),
      },
      initialRoute: HomeView.homeViewId,
    );
  }
}

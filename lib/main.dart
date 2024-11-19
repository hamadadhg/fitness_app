import 'package:fitness_app/views/forget_password_view.dart';
import 'package:fitness_app/views/home_view.dart';
import 'package:fitness_app/views/login_view.dart';
import 'package:fitness_app/views/o_t_p_view.dart';
import 'package:fitness_app/views/sign_up_view.dart';
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
        SignUpView.signUpViewId: (context) => const SignUpView(),
        OTPView.otpViewId: (context) => const OTPView(),
        ForgetPasswordView.forgetPasswordViewId: (context) =>
            const ForgetPasswordView(),
      },
      initialRoute: HomeView.homeViewId,
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/cubits/access_phone_number_cubit/access_phone_number_cubit.dart';
import 'package:fitness_app/views/forget_password_view.dart';
import 'package:fitness_app/views/home_view.dart';
import 'package:fitness_app/views/login_view.dart';
import 'package:fitness_app/views/o_t_p_view.dart';
import 'package:fitness_app/views/sign_up_view.dart';
import 'package:fitness_app/views/steps_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAuth.instance.setSettings(
    appVerificationDisabledForTesting: true,
  );
  runApp(
    const FitnessApp(),
  );
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccessPhoneNumberCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeView.homeViewId: (context) => const HomeView(),
          LoginView.loginViewId: (context) => const LoginView(),
          SignUpView.signUpViewId: (context) => const SignUpView(),
          OTPView.otpViewId: (context) => const OTPView(),
          ForgetPasswordView.forgetPasswordViewId: (context) =>
              const ForgetPasswordView(),
          StepsView.stepsViewId: (context) => const StepsView(),
        },
        initialRoute: HomeView.homeViewId,
      ),
    );
  }
}

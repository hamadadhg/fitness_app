import 'package:flutter/material.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});
  static String otpViewId = 'OTPView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Hi',
        ),
      ),
    );
  }
}

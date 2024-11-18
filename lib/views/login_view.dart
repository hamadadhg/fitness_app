import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String loginViewId = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomRowInCornerWidget(),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 110,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(
                          0xffFFFFFF,
                        ),
                        borderRadius: BorderRadius.circular(
                          24,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    child: Text(
                      'hi',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

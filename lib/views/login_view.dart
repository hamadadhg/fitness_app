import 'package:fitness_app/widget/custom_contain_container_in_login_widget.dart';
import 'package:fitness_app/widget/custom_container_social_icon_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
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
            Row(
              children: [
                const CustomStackWidget(
                  widget: SizedBox(
                    width: 210,
                    child: CustomContainContainerInLoginWidget(),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(
                    -30,
                    -60,
                  ),
                  child: CustomTextButtonWidget(
                    onPressed: () {},
                    fontSize: 18,
                    text: 'Sign Up',
                    color: const Color(
                      0xffFFFFFF,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 130,
            ),
            const CustomTextWidget(
              text: 'Login With Social Account?',
              color: Color(
                0xffFFFFFF,
              ),
              fontSize: 18,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(
                      0xffFFFFFF,
                    ),
                    borderRadius: BorderRadius.circular(
                      28,
                    ),
                  ),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                CustomContainerSocialIconWidget(
                  height: 50,
                  width: 45,
                  borderRadius: 24,
                  widget: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(
                  0xffFFFFFF,
                ),
                borderRadius: BorderRadius.circular(
                  28,
                ),
              ),
              height: 45,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.apple,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomTextWidget(
                    text: 'Sign in with Apple',
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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

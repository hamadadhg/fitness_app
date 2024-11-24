import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/constant.dart';
import 'package:fitness_app/helper/message_to_user_helper.dart';
import 'package:fitness_app/widget/custom_container_social_icon_widget.dart';
import 'package:fitness_app/widget/custom_icon_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CustomLoginWithSocialAccountWidget extends StatelessWidget {
  const CustomLoginWithSocialAccountWidget({
    super.key,
    this.firstHeight = 95,
    this.secondHeight = 27,
    this.thirdHeight = 20,
    this.firstWidth = 15,
  });
  final double firstHeight;
  final double secondHeight;
  final double thirdHeight;
  final double firstWidth;

  Future<void> signInWithGoogle({required BuildContext context}) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return;
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
      messageToUserHelper(
        context: context,
        text: 'Google Sign In Successful',
      );
    } catch (e) {
      messageToUserHelper(
        context: context,
        text: 'Google Sign In Failed ${e.toString()}',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: firstHeight,
        ),
        CustomTextWidget(
          text: 'Login With Social Account?',
          color: kWhiteColor,
          fontSize: 18,
        ),
        SizedBox(
          height: secondHeight,
        ),
        GestureDetector(
          onTap: () {
            signInWithGoogle(
              context: context,
            );
          },
          child: CustomContainerSocialIconWidget(
            height: 45,
            width: 250,
            borderRadius: 28,
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png',
                  height: 25,
                  width: 30,
                ),
                SizedBox(
                  width: firstWidth,
                ),
                CustomTextWidget(
                  text: 'Sign in with Google',
                  color: kBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: thirdHeight,
        ),
        GestureDetector(
          onTap: () {},
          child: CustomContainerSocialIconWidget(
            height: 45,
            width: 250,
            borderRadius: 28,
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconWidget(
                  iconData: Icons.apple,
                  color: kBlackColor,
                  size: 30,
                ),
                SizedBox(
                  width: firstWidth,
                ),
                CustomTextWidget(
                  text: 'Sign in with Apple',
                  color: kBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

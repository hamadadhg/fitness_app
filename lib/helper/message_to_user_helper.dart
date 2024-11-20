import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

void messageToUserHelper(
    {required BuildContext context, required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kWhiteColor,
      duration: const Duration(
        milliseconds: 3250,
      ),
      content: CustomTextWidget(
        text: text,
        color: kDeepPurpleColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

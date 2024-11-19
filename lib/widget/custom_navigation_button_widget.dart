import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomNavigationButtonWidget extends StatelessWidget {
  const CustomNavigationButtonWidget({
    super.key,
    required this.wordToNavigationOnThisView,
    required this.height,
    required this.width,
    required this.colorToContainer,
    required this.colorToText,
    required this.text,
    required this.fontSize,
  });
  final String wordToNavigationOnThisView;
  final double height;
  final double width;
  final Color colorToContainer;
  final String text;
  final Color colorToText;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          wordToNavigationOnThisView,
        );
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(
            colorToContainer.value,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Center(
          child: CustomTextWidget(
            text: text,
            color: colorToText,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

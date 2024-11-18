import 'package:fitness_app/constant.dart';
import 'package:flutter/material.dart';

class CustomIconButtonWidget extends StatelessWidget {
  const CustomIconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(
          context,
        );
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: kWhiteColor,
      ),
    );
  }
}

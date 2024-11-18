import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnLoginWidget extends StatelessWidget {
  const CustomColumnLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            CustomTextWidget(
              text: 'Login',
              color: Color(
                0xff411270,
              ),
              fontSize: 18,
            ),
          ],
        ),
        TextField(),
      ],
    );
  }
}

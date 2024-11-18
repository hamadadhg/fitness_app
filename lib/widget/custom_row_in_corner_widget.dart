import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomRowInCornerWidget extends StatelessWidget {
  const CustomRowInCornerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              CustomTextWidget(
                text: 'your',
                color: Color(
                  0xffFFFFFF,
                ),
                fontSize: 35,
              ),
              CustomTextWidget(
                text: 'LOGO',
                color: Color(
                  0xffFFFFFF,
                ),
                fontSize: 35,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:fitness_app/widget/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class CustomTextFieldsInRow extends StatelessWidget {
  const CustomTextFieldsInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 45,
          child: CustomTextFieldWidget(
            textAlign: TextAlign.center,
            fontSize: 16,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          width: 45,
          child: CustomTextFieldWidget(
            textAlign: TextAlign.center,
            fontSize: 16,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          width: 45,
          child: CustomTextFieldWidget(
            textAlign: TextAlign.center,
            fontSize: 16,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          width: 45,
          child: CustomTextFieldWidget(
            textAlign: TextAlign.center,
            fontSize: 16,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ],
    );
  }
}

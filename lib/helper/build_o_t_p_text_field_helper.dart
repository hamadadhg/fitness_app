// ValueChanged<String> onChanged like void Function(String) onChanged
import 'package:fitness_app/widget/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';

Widget buildOTPTextFieldHelper(
    {required ValueChanged<String> onChanged,
    required String textError,
    required BuildContext context}) {
  return SizedBox(
    width: 45,
    child: CustomTextFieldWidget(
      keyboardType: TextInputType.phone,
      textAlign: TextAlign.center,
      fontSize: 16,
      onChanged: (value) {
        if (value.isNotEmpty && RegExp(r'^[0-9]$').hasMatch(value)) {
          onChanged(
            value,
          );
          FocusScope.of(context).nextFocus();
        } else if (value.isEmpty) {
          FocusScope.of(context).previousFocus();
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return textError;
        }
        return null;
      },
    ),
  );
}

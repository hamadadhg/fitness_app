import 'package:fitness_app/widget/custom_contain_container_in_forget_password_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainForgetPasswordWidget extends StatelessWidget {
  const CustomColumnContainForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRowInCornerWidget(),
        CustomStackWidget(
          horizontalOffset: -75,
          widget: SizedBox(
            width: 220,
            child: CustomContainContainerInForgetPasswordWidget(),
          ),
          heightToContainer: 300,
          widthToContainer: 300,
        ),
      ],
    );
  }
}

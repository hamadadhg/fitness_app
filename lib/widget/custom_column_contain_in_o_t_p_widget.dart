import 'package:fitness_app/widget/custom_contain_container_in_o_t_p_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainInOTPWidget extends StatelessWidget {
  const CustomColumnContainInOTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRowInCornerWidget(),
        CustomStackWidget(
          horizontalOffset: -75,
          widget: CustomContainContainerInOTPWidget(),
          heightToContainer: 300,
          widthToContainer: 300,
        ),
      ],
    );
  }
}

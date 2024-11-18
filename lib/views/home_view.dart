import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_column_contain_home_view_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String homeViewId = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: kTransparentColor,
        body: const CustomColumnContainHomeViewWidget(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pawflow/shared/themes/app_colors.dart';

class DividerVerticalWidgeat extends StatelessWidget {
  const DividerVerticalWidgeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: double.maxFinite,
      color: AppColors.stroke,
    );
  }
}

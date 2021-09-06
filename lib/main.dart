import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pawflow/modules/login/login_page.dart';
import 'package:pawflow/modules/splash/splash_page.dart';
import 'package:pawflow/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}

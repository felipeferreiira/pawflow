import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pawflow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:pawflow/modules/home/home_page.dart';
import 'package:pawflow/modules/login/login_page.dart';
import 'package:pawflow/modules/splash/splash_page.dart';
import 'package:pawflow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: "/splash", //seleciona como primeira pagina
      routes: {
        //rotas nomeadas das paginas
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pawflow/shared/themes/app_colors.dart';
import 'package:pawflow/shared/themes/app_text_styles.dart';
import 'package:pawflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:pawflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidgeat(
      title: "Não foi possivel identificar um código de barras.",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto.",
      primaryLabel: "Escanear Novamente",
      primaryOnPressed: () {},
      secondaryLabel: "Digite Código",
      secondaryOnPressed: () {},
    );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        //rotação da tela
        quarterTurns: 1,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground,
              ),
              centerTitle: true,
              leading: BackButton(
                color: AppColors.background,
              ),
            ),
            body: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.5),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    )),
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.5),
                ))
              ],
            ),
            bottomNavigationBar: SetLabelButtons(
              primaryLabel: "Insirir código do boleto",
              primaryOnPressed: () {},
              secondaryLabel: "Adicionar da galeria",
              secondaryOnPressed: () {},
            )),
      ),
    );
  }
}

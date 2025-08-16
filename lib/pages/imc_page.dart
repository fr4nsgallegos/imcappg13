import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imcappg13/models/imc_model.dart';
import 'package:imcappg13/widgets/slider_widget.dart';

class ImcPage extends StatefulWidget {
  final ThemeMode themeMode;
  final ValueChanged<bool> onThemeChanged;

  ImcPage({required this.themeMode, required this.onThemeChanged});

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  // double sliderValue = 1;

  double sliderHeigth = 40;
  double sliderweight = 60;
  double imcResult = 0;
  ImcModel? selectedImcModel;

  double calcularIMC() {
    imcResult = roundedDecimal(
      sliderweight / ((sliderHeigth / 100 * sliderHeigth / 100)),
    );
    return imcResult;
  }

  double roundedDecimal(double number) {
    return double.parse(number.toStringAsFixed(2));
  }

  void imcResultSelected() {
    if (imcResult > 0 && imcResult < 18.5) {
      selectedImcModel = imcModelList[0];
    } else if (imcResult >= 18.5 && imcResult < 24.9) {
      selectedImcModel = imcModelList[1];
    } else if (imcResult >= 25.0 && imcResult < 29.9) {
      selectedImcModel = imcModelList[2];
    } else {
      selectedImcModel = imcModelList[3];
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isDark = widget.themeMode == ThemeMode.dark;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Icon(Icons.light_mode),
              Switch(value: isDark, onChanged: widget.onThemeChanged),
              Icon(Icons.dark_mode),
            ],
          ),
        ],
        foregroundColor: Colors.white,
        title: Text("Calculadora IMC"),
        backgroundColor: Color(0xff4157B2),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SliderWidget(
              title: "Altura",
              unidadMedida: "cm",
              value: sliderHeigth,
              onChanged: (nuevoValor) {
                sliderHeigth = roundedDecimal(nuevoValor);
                setState(() {});
              },
            ),
            SliderWidget(
              title: "Peso",
              unidadMedida: "Kg",
              value: sliderweight,
              onChanged: (nuevoValor) {
                sliderweight = roundedDecimal(nuevoValor);
                setState(() {});
              },
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    calcularIMC();
                    imcResultSelected();
                    setState(() {});
                  },
                  child: Text("Calcular"),
                ),
              ),
            ),

            Text(
              imcResult.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Text(
              selectedImcModel?.title ?? "-",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 32),
            selectedImcModel == null
                ? Text("Realiza el cálculo para ver el resultado")
                : SvgPicture.asset(
                    "assets/images/${selectedImcModel!.pathImage}.svg",
                    width: 250,
                  ),
          ],
        ),
      ),
    );
  }
}

    // Ejemplo de slider 
    // Slider(
    //           min: 1,
    //           max: 3,
    //           divisions: 2,
    //           label: sliderValue.toString(),
    //           value: sliderValue,
    //           activeColor: Colors.red,
    //           inactiveColor: Colors.orange,
    //           thumbColor: Colors.amber,
    //           onChanged: (value) {
    //             sliderValue = value;
    //             print(value);
    //             setState(() {});
    //           },
    //         ),
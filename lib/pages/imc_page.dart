import 'package:flutter/material.dart';
import 'package:imcappg13/widgets/slider_widget.dart';

class ImcPage extends StatefulWidget {
  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  // double sliderValue = 1;

  double sliderHeigth = 40;
  double sliderweight = 60;
  double imcResult = 0;
  String imcResultValue = "";

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
      imcResultValue = "Delgadez";
    } else if (imcResult >= 18.5 && imcResult < 24.9) {
      imcResultValue = "Normal";
    } else if (imcResult >= 25.0 && imcResult < 29.9) {
      imcResultValue = "Sobrepeso";
    } else {
      imcResultValue = "Obesidad";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Text(imcResultValue, style: TextStyle(fontSize: 20)),
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
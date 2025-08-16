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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Calculadora IMC"),
        backgroundColor: Color(0xff4157B2),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SliderWidget(
              title: "Altura",
              unidadMedida: "cm",
              value: sliderHeigth,
            ),
            SliderWidget(
              title: "Peso",
              unidadMedida: "Kg",
              value: sliderweight,
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
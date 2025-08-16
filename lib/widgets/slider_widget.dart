import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  double value;
  String title;
  String unidadMedida;

  SliderWidget({
    required this.value,
    required this.title,
    required this.unidadMedida,
  });

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double roundedDecimal(double number) {
    return double.parse(number.toStringAsFixed(2));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${widget.title}:", style: TextStyle(fontSize: 15)),
        Text(
          "${widget.value} ${widget.unidadMedida}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Slider(
          min: 40,
          max: 280,
          value: widget.value,
          onChanged: (value) {
            widget.value = roundedDecimal(value);
            setState(() {});
          },
        ),
      ],
    );
  }
}

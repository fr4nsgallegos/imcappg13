import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  double value;
  String title;
  String unidadMedida;
  ValueChanged<double> onChanged;

  SliderWidget({
    required this.value,
    required this.title,
    required this.unidadMedida,
    required this.onChanged,
  });

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
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
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}

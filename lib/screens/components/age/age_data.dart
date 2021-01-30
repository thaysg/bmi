import 'package:bmi/screens/components/constants.dart';
import 'package:flutter/material.dart';

class AgeData extends StatefulWidget {
  @override
  _AgeDataState createState() => _AgeDataState();
}

class _AgeDataState extends State<AgeData> {
  int weight = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$weight',
          style: messuaresTextStyle,
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            inactiveTrackColor: Color(0xff8d8e98),
            activeTrackColor: Colors.white,
            thumbColor: Color(0xffeb1555),
            overlayColor: Color(0x29eb1555),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          ),
          child: Slider(
            value: weight.toDouble(),
            min: 10,
            max: 100,
            onChanged: (double newValue) {
              setState(() {
                weight = newValue.round();
              });
            },
          ),
        ),
      ],
    );
  }
}

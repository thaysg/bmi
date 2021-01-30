import 'package:bmi/screens/components/weight/weight_slider.dart';
import 'package:flutter/material.dart';

class WeightBalance extends StatefulWidget {
  final Widget child;
  final int weight;
  final ValueChanged<int> onChanged;
  final int initialWeight;

  const WeightBalance(
      {Key key, this.child, this.weight, this.onChanged, this.initialWeight})
      : super(key: key);

  @override
  _WeightBalanceState createState() => _WeightBalanceState();
}

class _WeightBalanceState extends State<WeightBalance> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0xff4c4f5e).withAlpha(100),
            borderRadius: new BorderRadius.circular(50),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) => WeightSlider(
              value: widget.weight,
              onChanged: (val) => widget.onChanged(val),
              minValue: 30,
              maxValue: 150,
              width: constraints.maxWidth,
            ),
          ),
        ),
        Image.asset(
          "images/up-arrow.png",
          color: Colors.white,
          height: 25.0,
        ),
      ],
    );
  }
}

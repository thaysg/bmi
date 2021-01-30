import 'package:bmi/screens/components/constants.dart';
import 'package:bmi/screens/components/my_containers.dart';
import 'package:bmi/screens/components/weight/balance.dart';
import 'package:flutter/material.dart';

class MyWeight extends StatefulWidget {
  @override
  _MyWeightState createState() => _MyWeightState();
}

class _MyWeightState extends State<MyWeight> {
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MyContainers(
        containerHeight: MediaQuery.of(context).size.height * 0.2,
        containerWidth: MediaQuery.of(context).size.width * .4,
        colour: Color(0xff26294B),
        cardChild: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'WEIGHT',
                    style: labelTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  WeightBalance(
                    weight: weight,
                    onChanged: (val) => setState(() => weight = val),
                  )
                  /* Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundIconButton(),
                      RoundIconButton(),
                    ],
                  ) */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

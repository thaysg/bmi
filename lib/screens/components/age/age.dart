import 'package:bmi/screens/components/age/age_data.dart';
import 'package:bmi/screens/components/constants.dart';
import 'package:bmi/screens/components/my_containers.dart';
import 'package:flutter/material.dart';

class MyAge extends StatefulWidget {
  @override
  _MyAgeState createState() => _MyAgeState();
}

class _MyAgeState extends State<MyAge> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MyContainers(
        containerHeight: MediaQuery.of(context).size.height * 0.2,
        containerWidth: MediaQuery.of(context).size.width * .4,
        colour: Color(0xff26294B),
        cardChild: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              Text(
                'AGE',
                style: labelTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              AgeData(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bmi/screens/components/age/age_data.dart';
import 'package:bmi/screens/components/bottom_button.dart';
import 'package:bmi/screens/components/calculate_brain.dart';
import 'package:bmi/screens/components/constants.dart';
import 'package:bmi/screens/components/gender/gender.dart';
import 'package:bmi/screens/components/my_containers.dart';
import 'package:bmi/screens/components/weight/balance.dart';
import 'package:bmi/screens/results_page/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

enum Genders {
  male,
  female,
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Genders selectedGenger;
  double height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        //backgroundColor: Color(0xff212121),
      ),
      //backgroundColor: Color(0xff263238),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 26.0),
              child: Row(
                children: [
                  Expanded(
                    child: GenderSelected(
                      onPress: () {
                        setState(() {
                          selectedGenger = Genders.male;
                        });
                      },
                      colour: selectedGenger == Genders.male
                          ? activeCardColor
                          : inactiveCardColor,
                      image: AssetImage('images/man.png'),
                      title: 'Male',
                    ),
                  ),
                  Expanded(
                    child: GenderSelected(
                      onPress: () {
                        setState(() {
                          selectedGenger = Genders.female;
                        });
                      },
                      colour: selectedGenger == Genders.female
                          ? activeCardColor
                          : inactiveCardColor,
                      image: AssetImage('images/girl.png'),
                      title: 'Female',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: MyContainers(
                          containerHeight:
                              MediaQuery.of(context).size.height * 0.2,
                          containerWidth:
                              MediaQuery.of(context).size.width * .4,
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
                                      onChanged: (val) =>
                                          setState(() => weight = val),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: MyContainers(
                          containerHeight:
                              MediaQuery.of(context).size.height * 0.2,
                          containerWidth:
                              MediaQuery.of(context).size.width * .4,
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
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: MyContainers(
                      title: 'HEIGTH',
                      containerHeight: MediaQuery.of(context).size.height * 0.5,
                      containerWidth: MediaQuery.of(context).size.width * .4,
                      colour: Color(
                        0xff26294B,
                      ),
                      cardChild: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'HEIGHT',
                                    style: labelTextStyle,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '$height cm',
                                    style: messuaresTextStyle,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: FlutterSlider(
                                onDragging:
                                    (handlerIndex, lowerValue, upperValue) {
                                  height = lowerValue;

                                  setState(() {});
                                },
                                values: [
                                  height.toDouble(),
                                ],
                                max: 220.0,
                                min: 120.0,
                                rtl: true,
                                axis: Axis.vertical,
                                hatchMark: FlutterSliderHatchMark(
                                  density:
                                      0.9, // means 50 lines, from 0 to 100 percent
                                ),
                                handler: FlutterSliderHandler(
                                    decoration: BoxDecoration(),
                                    child: Image.asset(
                                      'images/standing-frontal-man-silhouette.png',
                                      color: Color(
                                        0xffF50057,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 2,
            child: BottomButton(
              onTap: () {
                CalculateBrain calc =
                    CalculateBrain(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretarion: calc.getInterpretation(),
                    ),
                  ),
                );
              },
              title: 'CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}

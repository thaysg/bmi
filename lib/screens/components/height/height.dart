import 'package:bmi/screens/components/constants.dart';
import 'package:bmi/screens/components/my_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class MyHeight extends StatefulWidget {
  @override
  _MyHeightState createState() => _MyHeightState();
}

class _MyHeightState extends State<MyHeight> {
  double heightValue = 120;

  int height = 170;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                      '$heightValue cm',
                      style: messuaresTextStyle,
                    ),
                  ),
                  /* Expanded(
                    child: Image.asset(
                      'images/standing-frontal-man-silhouette.png',
                      height: _lowerValue,
                      color: Colors.white10,
                    ),
                  ), */
                ],
              ),
              Expanded(
                child: FlutterSlider(
                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    heightValue = lowerValue;

                    setState(() {
                      print(heightValue);
                    });
                  },
                  values: [
                    height.toDouble(),
                  ],
                  max: 220.0,
                  min: 120.0,
                  rtl: true,
                  axis: Axis.vertical,
                  hatchMark: FlutterSliderHatchMark(
                    density: 0.9, // means 50 lines, from 0 to 100 percent
                    /* labels: [
                      FlutterSliderHatchMarkLabel(percent: 10, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 20, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 30, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 40, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 50, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 60, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 70, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 80, label: Text('')),
                      FlutterSliderHatchMarkLabel(percent: 90, label: Text('')),
                      FlutterSliderHatchMarkLabel(
                          percent: 100, label: Text('')),
                    ], */
                  ),
                  handler: FlutterSliderHandler(
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        'images/standing-frontal-man-silhouette.png',
                        color: Color(
                          0xffF50057,
                        ),
                      ) /* Material(
                      type: MaterialType.canvas,
                      color: Color(0xffF50057),
                      elevation: 3,
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.adjust,
                            size: 25,
                          )),
                    ), */
                      ),
                  /* rightHandler: FlutterSliderHandler(
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.red,
                      size: 24,
                    ),
                  ), */
                ),
              ),
            ],
          ),
        ),
        //HeightCard()
        /* Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'HEIGHT',
                style: labelTextStyle,
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'images/height.png',
                    height: MediaQuery.of(context).size.height * .5,
                  ),
                ),
                Expanded(
                  child: Text(
                    '180',
                    style: messuaresTextStyle,
                  ),
                ),
                Expanded(
                  child: Text(
                    'cm',
                    style: labelTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ), */
      ),
    );
  }
}

import 'package:bmi/screens/components/bottom_button.dart';
import 'package:bmi/screens/components/constants.dart';
import 'package:bmi/screens/components/my_containers.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretarion;

  //teste
  final AssetImage picture;

  const ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretarion,
    this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        //backgroundColor: Color(0xff212121),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: MyContainers(
                colour: activeCardColor,
                containerHeight: MediaQuery.of(context).size.height,
                containerWidth: MediaQuery.of(context).size.width,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: picture),
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: bmiTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        interpretarion,
                        textAlign: TextAlign.center,
                        style: bodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              title: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}

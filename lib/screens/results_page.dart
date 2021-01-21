import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final BmiCalculatorBrain calculator;

  ResultsPage({this.calculator});

  @override
  Widget build(BuildContext context) {
    calculator.calculateBMI();
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultsTextTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUsableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    calculator.getResult(),
                    style: kResultsTextGreen,
                  ),
                  Text(
                    calculator.calculateBMI(),
                    style: kResultsTextResultsValue,
                  ),
                  Text(
                    calculator.getInterpretation(),
                    style: kResultsTextResultsSuggestion,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            title: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}

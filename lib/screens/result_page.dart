import 'package:bmi_calc/components/constant.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiText,required this.bmiAnswer, required this.bmiInterpretation});

  final String bmiAnswer;
  final String bmiText;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "YOUR RESULT",
                style: kLargeButtonTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                colour: kactivecardColor,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiAnswer,
                      style: kResultlabelTextStyle,
                    ),
                    Text(
                      "Normal BMI Range: 18.5 to 25 Kg/m^2",
                      textAlign: TextAlign.center,
                      style: klabelTextStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      textAlign: TextAlign.center,
                      style: klabelTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // BottomButton(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   buttonText: "RE-CALCULATE"
          // ),

          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: kLargeButtonTextStyle,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: kbottomContainerHeight,
              ),
          ),
        ],
      ),
    );
  }
}

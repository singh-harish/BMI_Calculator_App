import 'package:bmi_calc/bottom_button.dart';
import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
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
                      "Normal",
                      style: kResultTextStyle,
                    ),
                    Text(
                      "19.8",
                      style: kResultlabelTextStyle,
                    ),
                    Text(
                      "You need to eat more dude",
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

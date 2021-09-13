import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {

  BottomButton({ required this.onTap, required this.buttonText});
  final Function onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}

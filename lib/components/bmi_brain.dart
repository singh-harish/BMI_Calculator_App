import 'dart:math';

class BMIBrain {
  BMIBrain({required this.height, required this.weight});

  final int height; 
  final int weight;
  double _bmi=0.0;

  String getBMI(){
    _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>25){
      return "OVER-WEIGHT";
    }
    else if(_bmi>18.5){
      return "NORMAL";
    }
    else return "UNDER-WEIGHT";
  }

  String getInterpretation(){
    if(_bmi>25){
      return "You are having higher BMI than Normal. The world expects you to exercise and live a longer life.";
    }
    else if(_bmi>18.5){
      return "You are having the normal BMI. Keep up the good work and enjoy a longer life.";
    }
    else return "You are having lower BMI than Normal. The world expects you to eat more and be healthy.";
  }

}
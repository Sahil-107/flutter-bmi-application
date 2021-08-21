import 'dart:math';

class bmi_cal{
  
  bmi_cal({this.height,this.weight,this.age});

  double height;
  double weight;
  double age;

  double _bmic; 

  String bmido()
  {
    _bmic= weight/pow((height/100),2);
    return _bmic.toStringAsFixed(2);
  }  

  String tipni()
  {
    if(_bmic<18)
       return "Please eat more! your BMI is Low";
    else if(_bmic>18 && _bmic<24){
         return "Your BMI is good! stay Healthy";}
    else
    {
        return "you are overweight ! Start exercising";
    }      
  }

}
import 'dart:math';

class appBrain
{
  appBrain(this.height,this.weight);
  final int height;
  final int weight;
  double _bmi;

  String value()
  {
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String finding()
  {
    if(_bmi>=25)
      {
        return 'OVERWEIGHT';
      }
    else if(_bmi<18.5)
      {
        return 'UNDERWEIGHT';
      }
    else
      {
        return 'NORMAL';
      }
  }

  String interpolate()
  {
    if(_bmi>=25)
    {
      return 'You have higher than normal body weight.\nEXERCISE MORE!';
    }
    else if(_bmi<18.5)
    {
      return 'You have less than normal body weight.\nYou can eat a bit more.';
    }
    else
    {
      return 'You have normal body weight.\nCONGRATULATIONS! :-)';
    }
  }

}
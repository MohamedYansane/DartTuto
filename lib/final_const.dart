void main(){
  //if u don't want to change the value name use final or const
  //const will be allocated to memory once it compile
  //and not for final. That's the difference between two of them
  //and const variable is implicitly final

  // final keyword
  final name = "Yansane";

  final String countryName = "Senegal";

  //const keyword
  const pi = 3.14;
  const double gravity = 9.9;
  //the instance variable can be final not const

}

class Circle {
  final color = "Red";
  // in a class we cant use const only final if we want to use const
//we have to add static at the beginning
  //const PI = 3.14;
  static const PI = 3.14;
}
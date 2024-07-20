void main(){
  // Literals we didn't assign them a variable so  they r called literals
  true;
  int x = 2;
  "John";
  4.5;
  //string literal in dart
  String s1 = "Yansane";
  String s2 = 'Mohamed';
  String s3 = 'It\'s easy';
  String s5 = 'It\'s a programming language called.'
  'This is just a sample demo in Dart programming language';

  String name = "Kevin";

  print("My name is $name");
  // The argument type 'int' can't be assigned to the parameter type 'String
  // it's because of length we have to convert it to string using toString()
  //print('the number of character in kevin name is ' +name.length);
  print('the number of character in kevin name is ${name.length.toString()} ' );

  int l = 20;
  int b = 10;

  print("the sum of ${l} and ${b} is ${l+b} and the area of the\n"
      "rectangle is ${l * b}");


}
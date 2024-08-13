void main(){

  //print(constants.greeting); // by using static inside our class
  // we can no longer do like this now constants.greeting;
  //Instead
  final greeting = Constants.greeting;
  print(greeting);
}
class Constants{
  // with static the constructor is not called at all
  //but when we print greeting above we get the hello world
  //cause we have instancied the constant above   final constants = Constants();
  //when we remove it it no longer work
  Constants(){
    print("Hello world");
  }
  // static it means we can access it without creating an instance
  static String greeting = 'Hello dear!';
  static String bye = 'bye';
}
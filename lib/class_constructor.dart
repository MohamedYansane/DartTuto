void main(){
  // we r instancing it with parameter constructor
  // final cookie = Cookie('Rectangle', 20);
  // print(cookie.shape);
  // print(cookie.size);
  // instance with name constructor
  final cookie = Cookie(shape: 'Circle', size: 12.02);
  //cookie.size = 1.0; we can change it now cause it final
  print(cookie.shape);
  print(cookie._height);

  // getters setters
  print(cookie._height);
  //cookie.setHeight(17); itt will throws us error
  // for our setters cause it's a syntax for a method

  //right syntax for setters
  cookie.setHeight = 17;
  print(cookie._height);

}

class Cookie{
  //variables
  //Important this  are unmutable
  //mutable when we can change the value of the variable unmutable the opposite
  final String shape;
  final double size;

  //Private variable

  //In other language when we don't want a variable to be visible outside of the class we make it private
  //notice:In dart  if we make a variable private we can't access it in another file
  //only in the file we created it so outside of the class we can print the height
  // to make a variable private we use _ at the beginning of the variable
  int _height = 4;
  int _width = 5;
  int calculateSize() => _height * _width;

  //Getters
   int get height => _height;
   int get width => _width;

  //Setters
  set setHeight(int h){
    _height = h;
  }

  //static function

  //static variables


  // parameter constructor
  // Cookie(this.shape, this.size){
  //   baking();
  // }
  // named constructor
  Cookie ({required this.shape, required this.size});
  // we can also write our constructor like this-> Cookie(this.shape, this.size);
  // in a class we call method instead a function


  void baking (){
    print("Your Baking of $shape shape with $size cm  has started");
  }
  bool isCooking () {
    return false;
  }
}
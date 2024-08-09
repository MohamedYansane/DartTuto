import 'package:dart/inheritance.dart';

void main (){

  //cause inside that class there's a method which return the speed


}

class Vehicle {
  bool isEngineWorking = false;
  bool isLightOn = true;
  int nbWheels = 10;

  void accelerate (){
    print("accelerate");
  }

}
//TODO: with bike and other class i'm gonna use implements
//so that we can understand it concepts

// i'm getting this error: Missing concrete implementations of 'getter Vehicle.isEngineWorking',
// 'getter Vehicle.isLightOn', 'setter Vehicle.isEngineWorking', and 'setter Vehicle.isLightOn'

//TODO: so it means we need getters and setters of vehicle attribute or variable
// TODO: but why we do need to write getters and setters we can avoid that
// TODO: by using override
// the error is gone now
class Bike implements Vehicle{
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  int nbWheels = 2; // bike have 2 wheels

  @override
  void accelerate(){
    print("the bike is running");
  }

}

class Car implements Vehicle{
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  int nbWheels = 4; // car have 4 wheels

  @override
  void accelerate(){
    print("the car is accelerating");
  }
  void printSomething(){
    print(nbWheels);
  }
}


class Truck implements Vehicle{
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  int nbWheels = 12;

  @override
  void accelerate(){
    print("the truck is accelerating");
  }
  void printSomething(){
    print(nbWheels);
  }
}
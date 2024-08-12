void main(){
  //TODO: Abstract class can't be instancied like Vehicle vehicle = Vehicle();
  Vehicle vehicle = Car();
  vehicle.accelerate();

  Truck truck = Truck();
  truck.accelerate();
}
//TODO: normal class are implicit an abstract class but abstract
// TODO can't be constructed we can't use construct
abstract class Vehicle{
 //TODO: in abstract class we can create a function without using {} like we see
  //TODO in the previous class concept
  int nbWheels = 10;
  void accelerate();
}

class Car implements Vehicle{
  double km = 145.8;
  @override
  void accelerate() {
    // TODO: implement accelerate
    print('The car is accelerating at $km');
  }
  // TODO: with implements we must override the nbWheels

  @override
  int nbWheels = 4;

}

//TODO: we can extends an abstract class too and we don't need to override
//TODO the nbWheels when use extends with abstract class we can directly access
//TODO the variable
class Truck extends Vehicle{
  double km = 145.8;
  @override
  void accelerate() {
    // TODO: implement accelerate
    print('The truck is accelerating at $km and have $nbWheels wheels');
  }

}


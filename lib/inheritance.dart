void main(){
  // most of the time is a represent a symbol of inheritance
  //like car is a vehicle or truck or bike

  Car car = Car();
  car.accelerate();
  print(car.speed);

  // use of as
  // our vehile is type of Vehicle
  Vehicle vehicle = Car();
  // there is speed inside vehicle but we wanna access nb of wheels how can we do that
  print((vehicle as Car).nbWheels); // and we get 4

  // and to demonstrate the tree of family we gonna use truck to print the speed
  final truck = Truck();

  //accessing speed
  print(truck.speed);//so we get 10 speed is in SomeClass which is grand father class
  //we have two accelerate
  truck.accelerate();
  print(truck.speed); // we gonna 15 cause in our parend it gonna use the accelerate inside the father class
  // but as soon as we remove accelerate from the parent  it gonna apply the accelerate from the grand parent class
}


// a class can't extend 2 class at the same time like and truck can't extends
//another class

// we think of inheritance like family tree
// we have our father and our father inherit of our grand father and we inherit from
//our father it means we also inherit from our grand father
// we gonna do an exemple of Vehicle extends SomeClass






class SomeClass{
  int speed = 10;
  void accelerate (){
    speed+=25;
  }
}

class Vehicle extends SomeClass{
  //int speed = 10;
  // use of override we already have accelerate in the parent class so the child must have
  // override
  @override
  int accelerate(){
    speed+= 5; // we r accessing the speed cause in the parent we defined it there
    return speed;
  }

}

class Car extends Vehicle{
  int nbWheels = 4;
}

class Truck extends Vehicle{
  int nbWheels = 12;
}
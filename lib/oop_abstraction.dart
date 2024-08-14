void main(){

  //TODO: in OOP concept we have types
  //TODO: 1- Abstraction: on ne peut instancier an abstract class
  //TODO: it allows us or it a process to hide an internal details and expose
  // TODO only the essential details
  //eg: we can't write Animal animal = Animal() but we can do as below

  Animal animal = Cat();
  animal.sound();
  // we have ability to reassigned cat to Dog also
  //cause Dog is type of Animal or inherit from it too
  animal = Dog();
  animal.sound();
  Dog dog = Dog();
  dog.sound();
  Cat cats = Cat();
  cats.sound();

}

abstract class Animal {
  void sound();
}
class Cat extends Animal{
  @override
  void sound(){
    print("Cat making sound");
  }
}
class Dog extends Animal{
  @override
  void sound(){
    print("Dog making sound");
  }
}
void main(){
  //TODO: Oriented Object Programming is what we r doing till now
  //TODO: we notice here DateTime is a class now is probably a static method we created
  //TODO inside more details go to static class and why the method is static
  final date = DateTime.now();
  //TODO: in OOP concept we have types
  //TODO: 1- Polymorphism: is an ability of a object to take on many forms
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
  // TODO: 2- Abstraction
  // TODO: 3- Inheritance
  // TODO: 4- Encapsulation


}

class Animal {
  void sound(){
    print("Animal making sound");
  }
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
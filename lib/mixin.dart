void main(){
  Animal animal = Animal();
  animal.jumpFn();

  Cat cat = Cat();
  cat.fn();

}
//TODO: this how to use mixin like class
mixin Jump{
  int jump = 10;
}

//TODO we can have multiple mixin
mixin Scream {
  bool isScreaming = true;
}
//TODO when we use mixin the class that inherit from it must use with
class Animal with Jump, Scream{
  void jumpFn(){
    print('Jumping height is $jump cm and screaming ${isScreaming ? 'yes': "no"}');
  }
}
//TODO: notice here i can use or access to jump here because of Animal
class Cat extends Animal{
  void fn(){
    print("jumping height in cm is: $jump ");
  }
}
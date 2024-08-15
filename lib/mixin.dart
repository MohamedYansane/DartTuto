void main(){
  Animal animal = Animal();
  animal.jumpFn();

}
//TODO: this how to use mixin like class
mixin Jump{
  int jump = 10;
}
//TODO when we use mixin the class that inherit from it must use with
class Animal with Jump{
  void jumpFn(){
    print('Jumping height is $jump cm');
  }
}
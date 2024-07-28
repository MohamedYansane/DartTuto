void main(){
  String name = "Yansane Mohamed";
  printName(23, true, greeting: 'Hello', name: name,);
}

void printName(int age , bool isAdult,{required String name, required String greeting}){
  print(name);
  print(age);

}

// void printName(int age ,{required String name, required String greeting}, bool isAdult){
// notice when we add an argument after the required or name arguments like bool isAdult
// we gonna get an error it's only before them we can add like int age
//NB: int age is positional argument and those with {} are called named arguments
// }
void main(){
  //here we give two params cause the name 3 is optional
  printCities(name1: "Sydney", name2: "Dakar");
}

// here we r passing arguments to our function name1,2 and 3
void printCities({ required String name1, required String name2, String? name3}){
  print("The city number 1 is $name1");
  print("The city number 2 is $name2");
  String lastcountry = name3??"No country";
  print("The city number 3 is $lastcountry");
  print(name3);
}
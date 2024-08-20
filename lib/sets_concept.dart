void main(){



  List<Etudiant>etudiants = [Etudiant('Yansane', 18), Etudiant('Mohamed', 19),
    Etudiant('Medo', 15), Etudiant('Baba', 10),Etudiant('Alpha', 08)];

}

//TODO generics <datatype> is called generic here we didn't indicate the types we just
//TODO used T so dart will automatically identified the type when we instancied
class Student<T>{
  final T name;
  Student(this.name);

  //we can also use the T
  void printName(T name){
    print('Name is: $name');
  }
  //TODO we r using override here with toString cause it dart that create that
  //TODO by default
  @override
  String toString() => 'Student: $name';
//TODO after overriding the toString now whenever we instancied it won't return
//TODO Instance of Student
}

class Animal<String>{
  final String name;
  Animal(this.name);
}

class Etudiant{
  final String name;
  final int marks;
  Etudiant(this.name, this.marks);
  @override
  String toString()  => 'Student: $name note $marks';
}

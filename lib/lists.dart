void main(){
  //TODO: List is an order collection of object
  //List list = List(); it won't work cause it's an abstract class as we see
  List list = [10, 11, 14, 'hEllo']; // this is list of dynamic
  List<int> marks = [10, 11, 14];
  //TODO Object we can only pass a non nullable value different of dynamic
  List<Object> obj = [10, 11, 14, 'hEllo', false];
  final studentMohamed = Student('Mohamed');
  List<Student> students = [Student('Yansane'), studentMohamed];
  print(students[0]); //it will return an instance of student
  print(students[0].name);

  final studentName = students[0];
  print(studentName.name);
  //TODO List of students using dynamic value
  List dynamicStudent = [Student('Yansane'), Student('Mohamed'), 'Mark'];
  //we can check if our dynamic student is Student type
  if(dynamicStudent[2] is Student){
    print(dynamicStudent[2].name);
  }
  else{
    print("It's not student type");
  }
  //we can use runtype also if dynamicStudent[0].runtype == Student
  //TODO 1- add new student
  students.add(Student('Baba'));
  students.insert(1, Student("Pema"));
  print('Adding a student');
  print(students);
  //TODO 2- Update student
  print('Updating a student');
  students[0] = Student('Medo');
  print(students[0].name);
  print(students);
  //TODO 2- Remove student
  print('Removing a student');
  students.remove(Student("Mohamed")); // it's not removing cause it's creating another
  //instance of Mohamed so the first instance is what we created at insert they r differents
  //TODO to fix it we have to create above a final studentMohamed = Student('Mohamed')
  //TODO and pass to the list our studentMohamed then pass the same value to remove
  students.remove(studentMohamed); // it works cause we try to access the same instance of the class
  print(students);

  //TODO use of filter
  List<Etudiant>etudiants = [Etudiant('Yansane', 18), Etudiant('Mohamed', 19),
    Etudiant('Medo', 15), Etudiant('Baba', 10),Etudiant('Alpha', 08)];
  List<Etudiant> noteabove10 = [];
  for(Etudiant etudiant in etudiants){
    if(etudiant.marks > 10){
      noteabove10.add(etudiant);
    }
  }
  print('List of students who have more than 10');
  print(noteabove10);

 //TODO Second method by using where either .where((value){}) or .where((value)=>)
  final filteredStudent = etudiants.where((etudiant)=> etudiant.marks > 10);//it will return an iterable
  //we have to convert our iterable to a list we can use toList by here let just print
  //print(filteredStudent);// when we hove we see Iterable
  print(filteredStudent.toList());


  //TODO List <datatype> var_name = [data_elt] eg with marks

  final student = Student('Yansane'); // as we see here Student<String> student
  // when we hover student
  student.printName('Mohamed Yansane');

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

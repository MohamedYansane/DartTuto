void main(){
  //TODO: List is an order collection of object
  //List list = List(); it won't work cause it's an abstract class as we see
  List list = [10, 11, 14, 'hEllo']; // this is list of dynamic
  List<int> marks = [10, 11, 14];

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

}

class Animal<String>{
  final String name;
  Animal(this.name);
}

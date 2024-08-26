void main(){
  final employee1 = Employee('Yansane', EmployeeTypes.swe);
  final employee2 = Employee('Mohamed', EmployeeTypes.devops);
  //todo in type section we don't want the use to put anything like haha etc a part from
  //what we had chosen we don't want him to play with our program so enums helps to
  //resolve that boundaries

  employee1.fn();
  employee1.salaryFn();
}
//TODO how we declare enum
// enum EmployeeType{
//   //todo we use lowercase not capital otherwise it'll throw us an error
//   swe,
//   finance,
//   marketing,
//   devops
//
// }
// todo we can add salary for each  employee
enum EmployeeTypes{
  swe(200000),
  finance(240000),
  marketing(150000),
  devops(300000); // at the end instead of comma i used semi colon
  final int salary;
  const EmployeeTypes(this.salary);
}
class Employee{
  final String empName;
  final EmployeeTypes type;
  Employee(this.empName, this.type);
  void fn(){
    switch(type){
      case EmployeeTypes.swe:
        print('Sofware Enginner');
      case EmployeeTypes.devops:
        print("Devops");
      case EmployeeTypes.finance:
        print("Finance");
      default:
        print('Marketing');
    }
  }

  void salaryFn(){

    print(type.salary);
  }
}
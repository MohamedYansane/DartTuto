//In dart we called tuples like other languages record
// so we gonna see how we can return a record

void main(){
  //we can assign var or final but not const cause function is not a constant value
  var name = printRecord();
  print(name);
  // when we add name. we see $1 and $2 they r called getters we gonna see it with class
  print(name.$1); // 23
  print(name.$2);//Yansane Mohamed
  // we can destructure the value
  var (age, lastName) = printRecord();
  print(age);
  print(lastName);
  //as what we did with name we can't do it with age or lasName
  //because we have destructured
}

//it called a record;
(int, String) printRecord(){
  return (23, 'Yansane Mohamed');
}
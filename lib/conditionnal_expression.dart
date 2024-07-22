void main(){
  // Conditional Expressions

  // 1.   condition ? exp1 : exp2
  // If condition is true, evaluates expr1 (and returns its value);
  // otherwise, evaluates and returns the value of expr2.
  int a = 2;
  int b = 4;
  int smallerNumber = a< b ? a : b;
  print("The smaller number is $smallerNumber");
  a > b ? print("the greater is $a"):print("$b is the greater");

  // 2.   exp1 ?? exp2
  // If expr1 is non-null, returns its value; otherwise, evaluates and
  // returns the value of expr2.
  //now to assign a null value we use ?
  //syntax data type followed by ? then variable name
  String? name ;
  String nameToprint = name ?? "Guest user";

  print(nameToprint);

}
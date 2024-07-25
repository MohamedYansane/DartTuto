// OBJECTIVES
// 1. Define a Function
// 2. Pass parameters to a Function
// 3. Return value from a Function
// 4. Test that by default a Function returns null

// a function is a collection of statement grouped together to perform
//operation

// Une fonction est un sous-programme ou bloc d’instructions écrit pour réaliser
// une tâche particulière

void main(){
  findPerimeter(4, 2);

  int area = rectArea(4, 2);
  print("The area of the rectangle is $area");
}

void findPerimeter(int length, int width){
  print("the perimeter of the rectangle is ${2 * (length + width)}");
}

int rectArea(int length, int width){
  return length * width;
}
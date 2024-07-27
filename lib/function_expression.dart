// OBJECTIVE: Expression in Function: SHORT HAND SYNTAX

void main(){
  findPerimeter(5, 2);
  int area = areaRect(5,2);
  print("The area of the rectangle is $area");


}

void findPerimeter(int length, int width) => print("The perimeter of the rectangle is "
    "${ 2 * (length + width)}");

int areaRect(int length, int width) => length * width;
// "=>" is known as FAT ARROW
// "=> expression" is a SHORT HAND SYNTAX for { return expression; }
// Example "=> length * breadth" is SHORT HAND SYNTAX for { return length * breadth; }
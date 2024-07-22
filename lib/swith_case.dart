void main(){
  //The variable in swith case can be only int or String.
  //double or list are not allowed
  String grade = "F";
  switch (grade){
    case "A":
      print("Excellent grade. Congratulations !");
      break;
    case "B":
      print("Very Good !");
      break;
    case "C":
      print("Good enough. But work hard");
      break;
    case "F":
        print("You have failed");
        break;
    default:
      print("Invalid grade");
      break;
  }
}
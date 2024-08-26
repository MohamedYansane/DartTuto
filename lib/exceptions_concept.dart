void main(){
  //TODO when u r sure a code can throw an exception put it in try catch block
  //todo here using ~ we r using truncating division that gonna return an integer
  print(10~/ 3);// -> 3.333 by truncating we get 3
  print(10/0); // it should return infinity
  //  print(10~/0); it gonna throw an error so i put in try block to handle the error
  try{
    print(10~/0); // it gonna throw an error
  }catch(e){
    print('Some error occured');
  }
  print('The programm continue now');
}
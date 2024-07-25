void main(){
  //the continue key word means to skip in our case we gonna skip all even number and
  //continue the loop by printing the odd number

  for(int i = 1; i <= 10;++i){
    if(i % 2 == 0){
      continue;
    }
    print(i);
    //so here if the i is even it gonna skip the print i and continue the loop
  }
}
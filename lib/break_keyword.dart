void main(){
  // BREAK keyword
  // Using Labels myOuterLoop and innerLoop are labels i can rename them as i want
  // Nested FOR Loop
  myOuterLoop: for(int i = 1; i <= 3;++i){

    innerLoop: for(int j = 1; j <= 3;++j ){
      print("($i $j)");
      if(i == 2 && j == 2){
        break myOuterLoop;// the break key is apply only applicable for it nearest parent loop
        //in our case it j loop

        //nb: si j'avais pas fait le break pour my outer loop le code ne s'arretera
        //qu'au niveau de (3,3) car le break appartient au innerLoop le plus proche
        // le fait d'utiliser break myOuterLoop il s'arretera à (2 2)

        //

      }

    }

  }
}
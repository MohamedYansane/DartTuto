void main(){
  for(int i = 0; i<= 10;++i){
    if(i%2== 0){
      print(i);
    }
  }

  List planetList = ['Mercure', 'Venus', 'Terre', 'Mars', 'Jupiter', 'Sature',
    'Uranus', 'Nepture', 'Pluton'];
  for(String planet in planetList){
    print(planet);
  }
}
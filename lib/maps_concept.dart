void main(){
  //TODO MAPS each element has a unique key let call it dictionnary
  //todo {"key1":"value","key2":"value" }
  //todo We gonna store a student base on ssubject

  Map marks = {
    'Mohamed': 20,
    'Yansane': 19,
    'Bobo': 15
  };
  // to access mohamed mark we use a key as identifier
  //print(marks['Mohamed']);
  Map<String, int> notes = {
    'Mohamed': 20,
    'Yansane': 19,
    'Bobo': 15
  };
  //TODO Add
  final anotherNotes = {
    'Medo': 20,
    'Richard': 18,
    'Magesh': 19
  };
  notes.addAll(anotherNotes);

  //TODO update
  notes['Baba'] = 18;
  //TODO delete we pass only the key
  notes.remove('Bobo');

  //TODO loop using for loop
  for(int i = 0 ; i < marks.length;++i){
    //print(marks[i]); it gonna return null for each iteration cause O,1,2 are not the keys
    //todo the best way is simply use keys and values then convert to a list
    //todo notice keys and values are iterable so i convert them to a a list and
    //todo access the element
    print("${marks.keys.toList()[i]} : ${marks.values.toList()[i]}");
  }
  print('\n');

  //TODO Using the best way by using forEach loop
  Map<int, String> donnees = {
    10:'20',
    20: "30",
    30: "40",
  };
  donnees.forEach((key, values) {
    print("$key -> $values");
  });
  print('\n');

  // i'm putting question marks to avoid like it can return a null value
  //print("is it an even number? ${notes['Mohamed']?.isEven}");

  //TODO List to map

   Map<String, int>noteETudiantA = {
     'Math': 20,
     'English': 19,
     'CS': 19
   };
   //todo now notes de tous les Etudiants
   List<Map<String, int>>noteEtudiants = [{
     'Math': 17,
     'English': 19,
     'CS': 10
   },{
     'Math': 15,
     'English': 17,
     'CS': 12
   },{
     'Math': 10,
     'English': 14,
     'CS': 11
   }, noteETudiantA];

   noteEtudiants.map((e){
     //todo e is an iterable type Map<String, int>
     e.forEach((key, values) {
       print('$key -> $values');
     });
   }).toList(); //notice if i didn't add toList it won't print anything
}
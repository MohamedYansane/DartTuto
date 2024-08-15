void main(){

}
//TODO: Encapsulation is a concept used in object-oriented programming to bundle
// TODO data and methods into easy-to-use unit
// with encapsulation we gonna talk about private and public getters setters

//TODO:L’encapsulation est un mécanisme consistant à rassembler les données et
//TODO les méthodes au sein d’une structure en cachant l’implémentation de l’objet,
//TODO c’est-à-dire en empêchant l’accès aux données par un autre moyen que les
//TODO services proposés. L’encapsulation permet donc de garantir l’intégrité
// TODO des données contenues dans l’objet.
class Person{
  late String _name;

  String get name => _name;
  set name(String name) => _name = name;
  //greeting method here is private cause we have underscore
  //TODO the class can be private too by using _
  void _greeting(){
    print("hello $name");
  }

}
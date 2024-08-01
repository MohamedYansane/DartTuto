void main (){
  // instanciation
  //type of the variable cookie is Cookie
  Cookie cookie = Cookie();
  Cookie().baking();
  final isCookingCalling = cookie.isCooking();
  print(isCookingCalling);
  final preparer = Cookie();
  preparer.shape = 'Ovale';
  // j'obtiendrai Ovale car j'ai instancier l'objet avec preparer et je peux
  //changer le shape
  //NB: quand je fais le print avec cookie j'obtiendrai toujours Circle
  print(preparer.shape);
}

class Cookie {
  //variables
  String shape = 'Circle';
  double size = 12.5;
  // in a class we call method instead a function
  void baking(){
    print("Baking has started");
  }
  bool isCooking(){
    return false;
  }
}//126977.500
import 'dart:convert' ;

import 'package:http/http.dart' as http;
//TODO i went to pubspec.yaml and add http dependencies from pub.dev

void main() async{

  //TODO Futures in js we call them Promises
  //if your contacting external API or services we need try catch
  //cause we don't now if it'll work or not
  //todo get fake api to https://jsonplaceholder.typicode.com/users

  print('Mohamed');
  print('Bonjour');
  print('Bonsoir');

  //todo print(fnResultIn2s()); when i write this it gonna return Instance of 'Future<String>'
  //todo in order to print the result we need to add async so that we xan use await
  //todo as we see we added async to the main

  //final result = await fnResult();
  //print(result); // now we got the result hey!!!

  //final resultIn2s = await giveResultIn2s();
 // print(resultIn2s);

  //todo we can remove async below and await by using then
  giveResultIn2s().then((val){
    print(val);
  });
  print("\n");

  //TODO using http  more detail about this go to https://pub.dev/packages/http/example
  //TODO In A URL: we have authority, port, path, constraint
  //todo in our case our authority is jsonplaceholder.typicode.com and we don't care about path here
  //todo /users it means users represent out path here
  var url = Uri.https('jsonplaceholder.typicode.com','users');
  try{
    var response = await http.get(url);
    if(response.statusCode == 200){
      print(response.body);
      //todo print the name we convert it first
      print(jsonDecode(response.body)[0]['name']);

    }
    else{
      print('Response failed with status: ${response.statusCode}');
    }
  }catch(e){
    print('Some unexpected error occurred');
  }
}

//todo we didn't add async in front of the fn by using future we don't need it
Future<String> fnResult(){
  return Future((){
    return 'Hey!!!!';
  });
}Future<String> giveResultIn2s(){
  return Future.delayed(Duration(seconds: 2),() async{
    return "Hey it's 2s !!!!";
  });
  //Duration is a named fn hours minutes seconds
  //so we can add async by returning or not
}

// String getUserName() async{
//
// }
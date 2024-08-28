void main(){
  //TODO Stream is asynchronous generator but with stream  we can get updated
  //todo whenever user change its information but we feature we must send a request before
  //todo getting updated
  countDown().listen((val){
    print(val);
  }, onDone:(){
    print('It succeeded');
  });
}

Stream<int>countDown()async*{
  for(int i = 5; i > 1; i--){
    yield i;
    //with stream here we can use await
    await Future.delayed(Duration(seconds: 2));

  }
  //todo whenever we use async* we can't return unless we remove it
}
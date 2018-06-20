import 'dart:async';

void main(){
  final completer = new Completer<int>();

  final future = completer.future;

  future.catchError((Error e){
    print(e);
  });

  new Timer(const Duration(milliseconds: 10), (){
    print('runtime error right here');
    completer.completeError(new CastError());
  });
}

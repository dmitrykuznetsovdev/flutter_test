import 'package:bloc/bloc.dart';

enum Events { increment, decrement }

class CounterEvent {
   static Map<String, dynamic> increment(int param) {
    return {
      "type": Events.increment,
      "payload": param
    };
  }
   static Map<String, dynamic> decrement(int param) {
     return {
       "type": Events.decrement,
       "payload": param
     };
   }
}

class CounterBloc extends Bloc<Map<String, dynamic>, int> {

  @override
  // TODO: implement initialState
  int get initialState => 1;

  @override
  Stream<int> mapEventToState(Map<String, dynamic> event) async* {
    switch (event["type"]) {
      case Events.decrement:
        yield state - event["payload"] as int;
        break;
      case Events.increment:
        yield state + event["payload"] as int;
        break;
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
  }
}
import 'package:bloc/bloc.dart';

enum DictionaryEvent { increment, decrement }

class DictionaryBloc extends Bloc<DictionaryEvent, dynamic> {

  @override
  // TODO: implement initialState
  int get initialState => 3;

  @override
  Stream<int> mapEventToState(DictionaryEvent event) async* {
    switch (event) {
      case DictionaryEvent.decrement:
        yield state - 1;
        break;
      case DictionaryEvent.increment:
        yield state + 1;
        break;
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
  }
}
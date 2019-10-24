/*
import 'package:bloc/bloc.dart';

enum RouterEvents {
  push,
  pop
}

class StateRouter {
  final Map<String, dynamic> defaultData = {
    "activeRouter": "/",
    "previewRouter": "/",
    "nextRouter": ""
  };

  set setActiveRouter(String aR) => defaultData["activeRouter"] = aR;
  set setPreviewRouter(String pR) => defaultData["previewRouter"] = pR;
  set setNextRouter(String nR) => defaultData["nextRouter"] = nR;
}

class RouterBloc extends Bloc<RouterEvents, StateRouter> {

  @override
  StateRouter get initialState => StateRouter();

  @override
  Stream<StateRouter> mapEventToState(RouterEvents event) async* {
    switch(event){
      case RouterEvents.push:
        yield state.;
        break;
      case RouterEvents.pop:
        yield state + 1;
        break;
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
  }
}

*/

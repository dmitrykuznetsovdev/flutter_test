/*
import 'package:bloc/bloc.dart';

class NavigatorBloc extends Bloc<NavigatorAction, dynamic> {
  final GlobalKey<NavigatorState> navigatorKey;
  NavigatorBloc({this.navigatorKey});

  @override
  dynamic get initialState => 0;

  @override
  Stream<dynamic> mapEventToState(NavigatorAction event) async* {
    if (event is NavigatorActionPop) {
      yield navigatorKey.currentState.pop();
    }
  }
}
*/

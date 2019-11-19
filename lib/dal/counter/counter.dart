import 'package:mobx/mobx.dart';
import 'package:flutter_app/dal/dialog/locator.dart';
import 'package:flutter_app/dal/dialog/dialog_services.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  @observable
  int value = 0;

  DialogService _dialogService = locator<DialogService>();

  @action
  void increment() {
    value++;
    // this.doThings();
  }

  @action
  void decrement() {
    value--;
  }

  Future doThings() async {
    print('dialog shown');
    var dialogResult = await _dialogService.showDialog(
        title: 'Dialog Manager',
        description: 'FilledStacks architecture is always awesome');

    if (dialogResult.confirmed) {
      print('User has confirmed');
    } else {
      print('User cancelled the dialog');
    }
  }
}
import 'package:mobx/mobx.dart';

// Include generated file
part 'dialog.g.dart';

// This is the class used by rest of your codebase
class DialogStore = _DialogStore with _$DialogStore;

// The store-class
abstract class _DialogStore with Store {
  @observable
  bool isShowDialog = false;
  @observable
  String title = '';
  @observable
  String description = '';
  @observable
  String textButtonSuccess = '';
  @observable
  String textButtonCancel = '';

  @action
  void showDialog() {
    this.isShowDialog = true;
  }

  @action
  void hideDialog() {
    this.isShowDialog = false;
  }
}
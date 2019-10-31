import 'package:mobx/mobx.dart';
import 'dart:developer' as developer;
import 'package:flutter_app/dal/router/locator.dart';

// Include generated file
part 'router.g.dart';

class RouterStore = _RouterStore with _$RouterStore;

abstract class _RouterStore with Store {
  @observable
  String activeRouter = '';
  @observable
  String previewRouter = '';

  setActiveAndPreviewRouter(String nameRouter) {
    this.previewRouter = this.activeRouter;
    this.activeRouter = nameRouter;
  }

  @action
  void pushNamed(String nameRouter) {
    setActiveAndPreviewRouter(nameRouter);
    developer.log(this.previewRouter, name : 'previewRouter');
    developer.log(this.activeRouter, name : 'activeRouter');
    locator<NavigationService>().navigateTo(nameRouter);
  }

  @action
  void replace(){
    locator<NavigationService>().goBack();
  }

  @action
  void pop() {
    setActiveAndPreviewRouter(this.activeRouter);
    locator<NavigationService>().goBack();
  }
}
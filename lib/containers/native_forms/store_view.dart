import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

// Include generated file
part 'store_view.g.dart';

// This is the class used by rest of your codebase
class StoreViewNativeForms = _StoreViewNativeForms with _$StoreViewNativeForms;

// The store-class
abstract class _StoreViewNativeForms with Store {
  @observable
  String name = '';

  @observable
  String lastName = '';

  @observable
  bool isValid = false;

  @action
  void submit(GlobalKey<FormState> _formKey) {
    final form = _formKey.currentState;
    if(form.validate()) {
      isValid = true;
    } else {
      isValid = false;
    }
  }

  @computed
  String get getFullName => '$name $lastName';
}
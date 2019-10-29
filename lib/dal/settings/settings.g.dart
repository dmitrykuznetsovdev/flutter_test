// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Settings on _Settings, Store {
  final _$useDarkModeAtom = Atom(name: '_Settings.useDarkMode');

  @override
  bool get useDarkMode {
    _$useDarkModeAtom.context.enforceReadPolicy(_$useDarkModeAtom);
    _$useDarkModeAtom.reportObserved();
    return super.useDarkMode;
  }

  @override
  set useDarkMode(bool value) {
    _$useDarkModeAtom.context.conditionallyRunInAction(() {
      super.useDarkMode = value;
      _$useDarkModeAtom.reportChanged();
    }, _$useDarkModeAtom, name: '${_$useDarkModeAtom.name}_set');
  }

  final _$isDarkModeUserAtom = Atom(name: '_Settings.isDarkModeUser');

  @override
  bool get isDarkModeUser {
    _$isDarkModeUserAtom.context.enforceReadPolicy(_$isDarkModeUserAtom);
    _$isDarkModeUserAtom.reportObserved();
    return super.isDarkModeUser;
  }

  @override
  set isDarkModeUser(bool value) {
    _$isDarkModeUserAtom.context.conditionallyRunInAction(() {
      super.isDarkModeUser = value;
      _$isDarkModeUserAtom.reportChanged();
    }, _$isDarkModeUserAtom, name: '${_$isDarkModeUserAtom.name}_set');
  }

  final _$setDarkModeAsyncAction = AsyncAction('setDarkMode');

  @override
  Future<void> setDarkMode({bool value}) {
    return _$setDarkModeAsyncAction.run(() => super.setDarkMode(value: value));
  }

  final _$_SettingsActionController = ActionController(name: '_Settings');

  @override
  void toggleDarkModeUser(bool mode) {
    final _$actionInfo = _$_SettingsActionController.startAction();
    try {
      return super.toggleDarkModeUser(mode);
    } finally {
      _$_SettingsActionController.endAction(_$actionInfo);
    }
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DialogStore on _DialogStore, Store {
  final _$isShowDialogAtom = Atom(name: '_DialogStore.isShowDialog');

  @override
  bool get isShowDialog {
    _$isShowDialogAtom.context.enforceReadPolicy(_$isShowDialogAtom);
    _$isShowDialogAtom.reportObserved();
    return super.isShowDialog;
  }

  @override
  set isShowDialog(bool value) {
    _$isShowDialogAtom.context.conditionallyRunInAction(() {
      super.isShowDialog = value;
      _$isShowDialogAtom.reportChanged();
    }, _$isShowDialogAtom, name: '${_$isShowDialogAtom.name}_set');
  }

  final _$titleAtom = Atom(name: '_DialogStore.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_DialogStore.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$textButtonSuccessAtom = Atom(name: '_DialogStore.textButtonSuccess');

  @override
  String get textButtonSuccess {
    _$textButtonSuccessAtom.context.enforceReadPolicy(_$textButtonSuccessAtom);
    _$textButtonSuccessAtom.reportObserved();
    return super.textButtonSuccess;
  }

  @override
  set textButtonSuccess(String value) {
    _$textButtonSuccessAtom.context.conditionallyRunInAction(() {
      super.textButtonSuccess = value;
      _$textButtonSuccessAtom.reportChanged();
    }, _$textButtonSuccessAtom, name: '${_$textButtonSuccessAtom.name}_set');
  }

  final _$textButtonCancelAtom = Atom(name: '_DialogStore.textButtonCancel');

  @override
  String get textButtonCancel {
    _$textButtonCancelAtom.context.enforceReadPolicy(_$textButtonCancelAtom);
    _$textButtonCancelAtom.reportObserved();
    return super.textButtonCancel;
  }

  @override
  set textButtonCancel(String value) {
    _$textButtonCancelAtom.context.conditionallyRunInAction(() {
      super.textButtonCancel = value;
      _$textButtonCancelAtom.reportChanged();
    }, _$textButtonCancelAtom, name: '${_$textButtonCancelAtom.name}_set');
  }

  final _$_DialogStoreActionController = ActionController(name: '_DialogStore');

  @override
  void showDialog() {
    final _$actionInfo = _$_DialogStoreActionController.startAction();
    try {
      return super.showDialog();
    } finally {
      _$_DialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void hideDialog() {
    final _$actionInfo = _$_DialogStoreActionController.startAction();
    try {
      return super.hideDialog();
    } finally {
      _$_DialogStoreActionController.endAction(_$actionInfo);
    }
  }
}

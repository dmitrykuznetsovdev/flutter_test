// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RouterStore on _RouterStore, Store {
  final _$activeRouterAtom = Atom(name: '_RouterStore.activeRouter');

  @override
  String get activeRouter {
    _$activeRouterAtom.context.enforceReadPolicy(_$activeRouterAtom);
    _$activeRouterAtom.reportObserved();
    return super.activeRouter;
  }

  @override
  set activeRouter(String value) {
    _$activeRouterAtom.context.conditionallyRunInAction(() {
      super.activeRouter = value;
      _$activeRouterAtom.reportChanged();
    }, _$activeRouterAtom, name: '${_$activeRouterAtom.name}_set');
  }

  final _$previewRouterAtom = Atom(name: '_RouterStore.previewRouter');

  @override
  String get previewRouter {
    _$previewRouterAtom.context.enforceReadPolicy(_$previewRouterAtom);
    _$previewRouterAtom.reportObserved();
    return super.previewRouter;
  }

  @override
  set previewRouter(String value) {
    _$previewRouterAtom.context.conditionallyRunInAction(() {
      super.previewRouter = value;
      _$previewRouterAtom.reportChanged();
    }, _$previewRouterAtom, name: '${_$previewRouterAtom.name}_set');
  }

  final _$_RouterStoreActionController = ActionController(name: '_RouterStore');

  @override
  void pushNamed(String nameRouter) {
    final _$actionInfo = _$_RouterStoreActionController.startAction();
    try {
      return super.pushNamed(nameRouter);
    } finally {
      _$_RouterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void replace() {
    final _$actionInfo = _$_RouterStoreActionController.startAction();
    try {
      return super.replace();
    } finally {
      _$_RouterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pop() {
    final _$actionInfo = _$_RouterStoreActionController.startAction();
    try {
      return super.pop();
    } finally {
      _$_RouterStoreActionController.endAction(_$actionInfo);
    }
  }
}

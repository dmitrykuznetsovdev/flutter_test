// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_view.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreViewNativeForms on _StoreViewNativeForms, Store {
  Computed<String> _$getFullNameComputed;

  @override
  String get getFullName =>
      (_$getFullNameComputed ??= Computed<String>(() => super.getFullName))
          .value;

  final _$nameAtom = Atom(name: '_StoreViewNativeForms.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$lastNameAtom = Atom(name: '_StoreViewNativeForms.lastName');

  @override
  String get lastName {
    _$lastNameAtom.context.enforceReadPolicy(_$lastNameAtom);
    _$lastNameAtom.reportObserved();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.context.conditionallyRunInAction(() {
      super.lastName = value;
      _$lastNameAtom.reportChanged();
    }, _$lastNameAtom, name: '${_$lastNameAtom.name}_set');
  }

  final _$isValidAtom = Atom(name: '_StoreViewNativeForms.isValid');

  @override
  bool get isValid {
    _$isValidAtom.context.enforceReadPolicy(_$isValidAtom);
    _$isValidAtom.reportObserved();
    return super.isValid;
  }

  @override
  set isValid(bool value) {
    _$isValidAtom.context.conditionallyRunInAction(() {
      super.isValid = value;
      _$isValidAtom.reportChanged();
    }, _$isValidAtom, name: '${_$isValidAtom.name}_set');
  }

  final _$_StoreViewNativeFormsActionController =
      ActionController(name: '_StoreViewNativeForms');

  @override
  void submit(GlobalKey<FormState> _formKey) {
    final _$actionInfo = _$_StoreViewNativeFormsActionController.startAction();
    try {
      return super.submit(_formKey);
    } finally {
      _$_StoreViewNativeFormsActionController.endAction(_$actionInfo);
    }
  }
}

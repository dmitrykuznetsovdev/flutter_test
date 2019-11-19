import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'counter/counter.dart';
import 'router/router.dart';
import 'dialog/dialog.dart';
import 'settings/settings.dart';
import 'settings/preferences_service.dart';
import 'package:flutter_app/containers/native_forms/store_view.dart';

// Include generated file
part 'main_store.g.dart';

// This is the class used by rest of your codebase
class MainStore = _MainStore with _$MainStore;

class _ViewStore  {
  final nativeForms = StoreViewNativeForms();
}

abstract class _MainStore with Store {

  BuildContext context;

  final router = RouterStore();
  final counterStore = Counter();
  final dialogStore = DialogStore();
  final settingsStore = Settings(PreferencesService());
  final viewStore = _ViewStore();
  set transportLayer(p) => null;

  _MainStore(BuildContext context, int transportLayer) {
    this.transportLayer = 1;
    this.context = context;
  }
}

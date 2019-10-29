import 'package:mobx/mobx.dart';
import 'counter/counter.dart';
import 'settings/settings.dart';
import 'settings/preferences_service.dart';

// Include generated file
part 'main_store.g.dart';

// This is the class used by rest of your codebase
class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {

  final counter = Counter();
  final settings = Settings(PreferencesService());
  set transportLayer(p) => null;

  _MainStore() {
    this.transportLayer = 1;
  }
}

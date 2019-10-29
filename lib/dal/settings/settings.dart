import 'package:mobx/mobx.dart';
import 'package:flutter_app/dal/settings/preferences_service.dart';

part 'settings.g.dart';

class Settings = _Settings with _$Settings;

abstract class _Settings with Store {
  _Settings(this._preferencesService) {
    _setup();
  }

  final PreferencesService _preferencesService;

  @observable
  bool useDarkMode = false;

  @observable
  bool isDarkModeUser = false;

  @action
  void toggleDarkModeUser(bool mode) {
    this.isDarkModeUser = mode;
  }

  @action
  Future<void> setDarkMode({bool value}) async {
    await _preferencesService.loaded;
    _preferencesService.useDarkMode = value;
    useDarkMode = value;
  }

  Future<void> _setup() async {
    await _preferencesService.loaded;
    useDarkMode = _preferencesService.useDarkMode;
  }
}
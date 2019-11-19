import 'package:get_it/get_it.dart';
import 'dialog_services.dart';

GetIt locator = GetIt.instance;

void setupDialogLocator() {
  locator.registerLazySingleton(() => DialogService());
}

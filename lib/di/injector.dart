import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/di/injector.config.dart';

GetIt injector = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  $initGetIt(injector);
}

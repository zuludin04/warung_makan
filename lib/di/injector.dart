import 'package:get_it/get_it.dart';
import 'package:warung_makan/ui/restaurants/viewmodel/restaurants_viewmodel.dart';

GetIt injector = GetIt.instance;

Future<void> inject() async {
  injector.registerFactory(() => RestaurantsViewModel());
}
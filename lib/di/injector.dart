import 'package:get_it/get_it.dart';
import 'package:warung_makan/data/source/local/restaurant_db_provider.dart';
import 'package:warung_makan/data/source/remote/restauran_api_provider.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';
import 'package:warung_makan/ui/detail/cubits/detail/restaurant_detail_cubit.dart';
import 'package:warung_makan/ui/detail/cubits/favorite/favorite_button_cubit.dart';
import 'package:warung_makan/ui/favorite/cubit/favorite_restaurant_cubit.dart';
import 'package:warung_makan/ui/home/cubits/restaurants_cubit.dart';
import 'package:warung_makan/ui/search/cubit/restaurant_search_cubit.dart';

GetIt injector = GetIt.instance;

Future<void> configureInjection() async {
  // bloc
  injector.registerFactory<FavoriteButtonCubit>(
          () => FavoriteButtonCubit(injector()));
  injector.registerFactory<FavoriteRestaurantCubit>(
          () => FavoriteRestaurantCubit(injector()));
  injector.registerFactory<RestaurantDetailCubit>(
          () => RestaurantDetailCubit(injector()));
  injector.registerFactory<RestaurantSearchCubit>(
          () => RestaurantSearchCubit(injector()));
  injector.registerFactory<RestaurantsCubit>(
          () => RestaurantsCubit(injector()));

  // repository
  injector.registerLazySingleton<WarungMakanRepository>(
        () =>
        WarungMakanRepositoryImpl(
          injector(),
          injector(),
        ),
  );

  /// data source
  injector.registerLazySingleton(() => RestaurantDbProvider());
  injector.registerLazySingleton(() => RestaurantApiProvider());
}

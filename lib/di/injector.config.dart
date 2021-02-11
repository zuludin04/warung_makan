// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:sqflite/sqflite.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'module/api_module.dart';
import 'module/database_module.dart';
import '../ui/favorite/cubit/favorite_restaurant_cubit.dart';
import '../data/source/remote/restauran_api_provider.dart';
import '../data/source/local/restaurant_db_provider.dart';
import '../ui/detail/cubit/restaurant_detail_cubit.dart';
import '../ui/search/cubit/restaurant_search_cubit.dart';
import '../ui/restaurants/cubit/restaurants_cubit.dart';
import '../data/warung_makan_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final databaseModule = _$DatabaseModule();
  final apiModule = _$ApiModule();
  final resolvedDatabase = await databaseModule.database;
  gh.factory<Database>(() => resolvedDatabase);
  gh.lazySingleton<Dio>(() => apiModule.dio);
  gh.lazySingleton<RestaurantApiProvider>(
      () => RestaurantApiProvider(get<Dio>()));
  gh.lazySingleton<RestaurantDbProvider>(
      () => RestaurantDbProvider(get<Database>()));
  gh.lazySingleton<WarungMakanRepository>(() => WarungMakanRepositoryImpl(
      get<RestaurantDbProvider>(), get<RestaurantApiProvider>()));
  gh.factory<FavoriteRestaurantCubit>(
      () => FavoriteRestaurantCubit(get<WarungMakanRepository>()));
  gh.factory<RestaurantDetailCubit>(
      () => RestaurantDetailCubit(get<WarungMakanRepository>()));
  gh.factory<RestaurantSearchCubit>(
      () => RestaurantSearchCubit(get<WarungMakanRepository>()));
  gh.factory<RestaurantsCubit>(
      () => RestaurantsCubit(get<WarungMakanRepository>()));
  return get;
}

class _$DatabaseModule extends DatabaseModule {}

class _$ApiModule extends ApiModule {}

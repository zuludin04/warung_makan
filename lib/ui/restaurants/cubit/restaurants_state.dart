part of 'restaurants_cubit.dart';

@freezed
abstract class RestaurantsState with _$RestaurantsState {
  const factory RestaurantsState.initialRestaurants() = InitialRestaurants;
  const factory RestaurantsState.loadingRestaurants() = LoadingRestaurants;
  const factory RestaurantsState.showRestaurantList(List<Restaurants> restaurants) = ShowRestaurantList;
  const factory RestaurantsState.failedShowRestaurants(String message) = FailedShowRestaurants;
}

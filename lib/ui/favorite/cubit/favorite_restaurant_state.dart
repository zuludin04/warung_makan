part of 'favorite_restaurant_cubit.dart';

@freezed
abstract class FavoriteRestaurantState with _$FavoriteRestaurantState {
  const factory FavoriteRestaurantState.initialFavorite() = InitialFavorite;
  const factory FavoriteRestaurantState.loadingFavorite() = LoadingFavorite;
  const factory FavoriteRestaurantState.showFavorites(List<Restaurant> favorites) = ShowFavorites;
  const factory FavoriteRestaurantState.emptyFavorite() = EmptyFavorite;
}

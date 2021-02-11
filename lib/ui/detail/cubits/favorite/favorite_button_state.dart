part of 'favorite_button_cubit.dart';

@freezed
abstract class FavoriteButtonState with _$FavoriteButtonState {
  const factory FavoriteButtonState.initialButton() = InitialButton;
  const factory FavoriteButtonState.isRestaurantFavorite(bool favorite) = IsRestaurantFavorite;
  const factory FavoriteButtonState.updateFavoriteDb() = UpdateFavoriteDb;
}

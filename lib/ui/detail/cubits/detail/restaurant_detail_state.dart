part of 'restaurant_detail_cubit.dart';

@freezed
abstract class RestaurantDetailState with _$RestaurantDetailState {
  const factory RestaurantDetailState.initialDetail() = InitialDetail;
  const factory RestaurantDetailState.loadingDetail() = LoadingDetail;
  const factory RestaurantDetailState.showRestaurantDetail(DetailRestaurant restaurant) = ShowRestaurantDetail;
  const factory RestaurantDetailState.failedShowDetail(String message) = FailedShowDetail;
}

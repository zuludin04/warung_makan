part of 'restaurant_search_cubit.dart';

@freezed
abstract class RestaurantSearchState with _$RestaurantSearchState {
  const factory RestaurantSearchState.initialSearch() = InitialSearch;
  const factory RestaurantSearchState.loadingSearch() = LoadingSearch;
  const factory RestaurantSearchState.showSearchResult(List<Restaurants> results) = ShowSearchResult;
  const factory RestaurantSearchState.failedShowResult(String message) = FailedShowResult;
  const factory RestaurantSearchState.emptyResult() = EmptyResult;
}

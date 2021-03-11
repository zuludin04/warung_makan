import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/core/utils/exception/network_exception.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';

part 'restaurant_search_cubit.freezed.dart';

part 'restaurant_search_state.dart';

@injectable
class RestaurantSearchCubit extends Cubit<RestaurantSearchState> {
  final WarungMakanRepository _repository;

  RestaurantSearchCubit(this._repository)
      : super(RestaurantSearchState.initialSearch());

  Future<void> searchRestaurant(String query) async {
    emit(RestaurantSearchState.loadingSearch());

    var result = await _repository.searchRestaurant(query);
    result.fold(
      (l) => emit(RestaurantSearchState.failedShowResult(
          NetworkException.getMessageError(l))),
      (r) {
        if (r.isEmpty) {
          emit(RestaurantSearchState.emptyResult());
        } else {
          emit(RestaurantSearchState.showSearchResult(r));
        }
      },
    );
  }
}

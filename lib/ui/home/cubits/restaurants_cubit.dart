import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/core/utils/exception/network_exception.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';

part 'restaurants_cubit.freezed.dart';

part 'restaurants_state.dart';

@injectable
class RestaurantsCubit extends Cubit<RestaurantsState> {
  final WarungMakanRepository _repository;

  RestaurantsCubit(this._repository)
      : super(RestaurantsState.initialRestaurants());

  Future<void> loadRestaurants() async {
    emit(RestaurantsState.loadingRestaurants());

    var result = await _repository.loadRestaurantList();
    result.fold(
      (l) => emit(RestaurantsState.failedShowRestaurants(
          NetworkException.getMessageError(l))),
      (r) => emit(RestaurantsState.showRestaurantList(r)),
    );
  }
}

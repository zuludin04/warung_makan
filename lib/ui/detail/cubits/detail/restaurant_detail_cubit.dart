import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/core/utils/exception/network_exception.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';

part 'restaurant_detail_cubit.freezed.dart';

part 'restaurant_detail_state.dart';

@injectable
class RestaurantDetailCubit extends Cubit<RestaurantDetailState> {
  final WarungMakanRepository _repository;

  RestaurantDetailCubit(this._repository)
      : super(RestaurantDetailState.initialDetail());

  Future<void> showDetailRestaurant(Restaurant restaurants) async {
    emit(RestaurantDetailState.loadingDetail());

    var result =
        await _repository.loadDetailRestaurant(restaurants.restaurantId);
    result.fold(
      (l) => emit(RestaurantDetailState.failedShowDetail(
          NetworkException.getMessageError(l))),
      (r) => emit(RestaurantDetailState.showRestaurantDetail(r)),
    );
  }
}

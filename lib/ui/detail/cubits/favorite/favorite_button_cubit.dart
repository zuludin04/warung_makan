import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/data/model/favorite_entity.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';

part 'favorite_button_cubit.freezed.dart';

part 'favorite_button_state.dart';

@injectable
class FavoriteButtonCubit extends Cubit<FavoriteButtonState> {
  final WarungMakanRepository _repository;
  bool _isFavorite = false;

  FavoriteButtonCubit(this._repository)
      : super(FavoriteButtonState.initialButton());

  Future<void> checkFavoriteRestaurant(String restaurantId) async {
    var result = await _repository.checkIfRestaurantFavorite(restaurantId);
    _isFavorite = result;
    emit(FavoriteButtonState.isRestaurantFavorite(result));
  }

  Future<void> insertRemoveFavoriteRestaurant(FavoriteEntity favorite) async {
    if (_isFavorite) {
      await _repository.deleteFavorite(favorite.restaurantId);
    } else {
      await _repository.insertFavoriteRestaurant(favorite);
    }
    emit(FavoriteButtonState.updateFavoriteDb());
    checkFavoriteRestaurant(favorite.restaurantId);
  }
}

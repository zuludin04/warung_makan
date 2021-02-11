import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/data/model/favorite_entity.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';

part 'favorite_restaurant_cubit.freezed.dart';

part 'favorite_restaurant_state.dart';

@injectable
class FavoriteRestaurantCubit extends Cubit<FavoriteRestaurantState> {
  final WarungMakanRepository _repository;

  FavoriteRestaurantCubit(this._repository)
      : super(FavoriteRestaurantState.initialFavorite());

  Future<void> loadFavoriteRestaurant() async {
    emit(FavoriteRestaurantState.loadingFavorite());
    var result = await _repository.loadFavoriteRestaurant();
    if (result.isEmpty) {
      emit(FavoriteRestaurantState.emptyFavorite());
    } else {
      emit(FavoriteRestaurantState.showFavorites(result));
    }
  }
}

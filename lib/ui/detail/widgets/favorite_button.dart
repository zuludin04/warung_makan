import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/favorite_entity.dart';
import 'package:warung_makan/ui/detail/cubits/favorite/favorite_button_cubit.dart';
import 'package:warung_makan/ui/favorite/cubit/favorite_restaurant_cubit.dart';

class FavoriteButton extends StatelessWidget {
  final DetailRestaurant restaurant;

  FavoriteButton({Key key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteButtonCubit>.value(
      value: BlocProvider.of<FavoriteButtonCubit>(context)
        ..checkFavoriteRestaurant(restaurant.id),
      child: BlocConsumer<FavoriteButtonCubit, FavoriteButtonState>(
        buildWhen: (p, c) => c is! UpdateFavoriteDb,
        listener: (context, state) {
          if (state is UpdateFavoriteDb) {
            context.read<FavoriteRestaurantCubit>().loadFavoriteRestaurant();
          }
        },
        builder: (context, state) {
          if (state is IsRestaurantFavorite) {
            return IconButton(
              icon: state.favorite
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              onPressed: () => BlocProvider.of<FavoriteButtonCubit>(context)
                  .insertRemoveFavoriteRestaurant(FavoriteEntity(
                      restaurantId: restaurant.id,
                      name: restaurant.name,
                      image: restaurant.pictureId,
                      city: restaurant.city,
                      rating: '${restaurant.rating}')),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warung_makan/core/commons/error_message.dart';
import 'package:warung_makan/ui/favorite/cubit/favorite_restaurant_cubit.dart';
import 'package:warung_makan/core/commons/restaurant_item.dart';

class FavoriteRestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteRestaurantCubit>.value(
      value: BlocProvider.of<FavoriteRestaurantCubit>(context)
        ..loadFavoriteRestaurant(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Favorite Restaurant',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Center(
          child: BlocBuilder<FavoriteRestaurantCubit, FavoriteRestaurantState>(
            builder: (context, state) {
              return state.map(
                initialFavorite: (_) => Container(),
                loadingFavorite: (_) => CircularProgressIndicator(),
                showFavorites: (fav) => ListView.builder(
                  itemBuilder: (context, index) =>
                      RestaurantItem(restaurants: fav.favorites[index]),
                  itemCount: fav.favorites.length,
                ),
                emptyFavorite: (_) => ErrorMessage(
                  isError: false,
                  errorMessage: 'Favorite Restaurant is Empty',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

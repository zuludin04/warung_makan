import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/core/commons/error_message.dart';
import 'package:warung_makan/core/commons/restaurant_item.dart';
import 'package:warung_makan/ui/home/cubits/restaurants_cubit.dart';

class RestaurantsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantsCubit, RestaurantsState>(
      builder: (context, state) {
        return state.map(
          initialRestaurants: (_) => Container(),
          loadingRestaurants: (_) => Center(child: CircularProgressIndicator()),
          showRestaurantList: (restaurants) => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return RestaurantItem(
                  restaurants: restaurants.restaurants[index]);
            },
            itemCount: restaurants.restaurants.length,
          ),
          failedShowRestaurants: (message) => ErrorMessage(
            isError: true,
            errorMessage: message.message,
            retryButton: () =>
                context.read<RestaurantsCubit>().loadRestaurants(),
          ),
        );
      },
    );
  }
}

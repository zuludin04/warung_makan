import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/core/commons/error_message.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/ui/restaurants/cubit/restaurants_cubit.dart';
import 'package:warung_makan/ui/restaurants/widgets/restaurant_item.dart';
import 'package:warung_makan/ui/search/restaurant_search_screen.dart';

class RestaurantsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Warung Makan',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, FavoritePageRoute),
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () => showSearch(
                context: context, delegate: RestaurantSearchScreen()),
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<RestaurantsCubit, RestaurantsState>(
          builder: (context, state) {
            return state.map(
              initialRestaurants: (_) => Container(),
              loadingRestaurants: (_) => CircularProgressIndicator(),
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
        ),
      ),
    );
  }
}

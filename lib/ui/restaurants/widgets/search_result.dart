import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/di/injector.dart';
import 'package:warung_makan/ui/restaurants/viewmodel/restaurants_viewmodel.dart';
import 'package:warung_makan/ui/restaurants/widgets/restaurant_item.dart';

class SearchResult extends StatelessWidget {
  final String query;
  final RestaurantsViewModel _model = injector<RestaurantsViewModel>();

  SearchResult(this.query);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _model..searchRestaurant(query),
      child: Center(
        child: Consumer<RestaurantsViewModel>(
          builder: (context, model, child) {
            if (model.loading) return CircularProgressIndicator();
            return ListView.builder(
              itemBuilder: (context, index) {
                return RestaurantItem(restaurants: _model.restaurants[index]);
              },
              itemCount: _model.restaurants.length,
            );
          },
        ),
      ),
    );
  }
}

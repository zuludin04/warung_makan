import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/core/commons/error_message.dart';
import 'package:warung_makan/di/injector.dart';
import 'package:warung_makan/ui/restaurants/viewmodel/restaurants_viewmodel.dart';
import 'package:warung_makan/ui/restaurants/widgets/restaurant_item.dart';

class RestaurantSearch extends StatelessWidget {
  final String query;
  final RestaurantsViewModel _model = injector<RestaurantsViewModel>();

  RestaurantSearch(this.query);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _model..searchRestaurant(query),
      child: Center(
        child: Consumer<RestaurantsViewModel>(
          builder: (context, model, child) {
            if (model.loading) return CircularProgressIndicator();
            if (model.showErrorMessage)
              return ErrorMessage(
                isError: true,
                errorMessage: model.errorMessage,
                retryButton: () => model.searchRestaurant(query),
              );
            if (model.emptyResult)
              return ErrorMessage(
                isError: false,
                errorMessage: model.errorMessage,
              );
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

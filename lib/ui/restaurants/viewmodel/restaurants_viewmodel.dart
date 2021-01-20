import 'package:flutter/material.dart';
import 'package:warung_makan/model/restaurant_response.dart';
import 'package:warung_makan/service/restaurant_service.dart';

class RestaurantsViewModel extends ChangeNotifier {
  RestaurantService _restaurantService = RestaurantService();

  List<Restaurants> _restaurants = List();
  bool _loading = false;
  bool _showErrorMessage = false;

  List<Restaurants> get restaurants => _restaurants;

  bool get loading => _loading;

  bool get showErrorMessage => _showErrorMessage;

  Future<void> loadRestaurantList() async {
    _showLoading(true);

    var result = await _restaurantService.loadRestaurantList();
    result.fold(
      (l) => _showErrorMessage = true,
      (r) => _restaurants.addAll(r),
    );

    _showLoading(false);
  }

  void _showLoading(bool show) {
    _loading = show;
    notifyListeners();
  }
}

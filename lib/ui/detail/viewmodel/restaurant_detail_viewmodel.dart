import 'package:flutter/material.dart';
import 'package:warung_makan/model/detail_response.dart';
import 'package:warung_makan/service/restaurant_service.dart';

class RestaurantDetailViewModel extends ChangeNotifier {
  RestaurantService _restaurantService = RestaurantService();

  Restaurant _restaurant = Restaurant();
  bool _loading = false;
  bool _error = false;

  Restaurant get restaurant => _restaurant;

  bool get loading => _loading;

  bool get error => _error;

  void loadDetailRestaurant(String id) async {
    _showLoading(true);

    var result = await _restaurantService.loadDetailRestaurant(id);
    result.fold(
      (l) => _error = true,
      (r) {
        _error = false;
        _restaurant = r;
      },
    );

    _showLoading(false);
  }

  void _showLoading(bool show) {
    _loading = show;
    notifyListeners();
  }
}

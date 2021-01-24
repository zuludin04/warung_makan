import 'package:flutter/material.dart';
import 'package:warung_makan/model/restaurant_response.dart';
import 'package:warung_makan/service/restaurant_service.dart';
import 'package:warung_makan/utils/exception/network_exception.dart';

class RestaurantsViewModel extends ChangeNotifier {
  RestaurantService _restaurantService = RestaurantService();

  List<Restaurants> _restaurants = List();
  bool _loading = false;
  bool _showErrorMessage = false;
  bool _emptyResult = false;
  String _errorMessage = "";

  List<Restaurants> get restaurants => _restaurants;

  bool get loading => _loading;

  bool get showErrorMessage => _showErrorMessage;

  bool get emptyResult => _emptyResult;

  String get errorMessage => _errorMessage;

  Future<void> loadRestaurantList() async {
    _showLoading(true);

    var result = await _restaurantService.loadRestaurantList();
    result.fold(
      (l) {
        _showErrorMessage = true;
        _errorMessage = NetworkException.getMessageError(l);
      },
      (r) => _restaurants.addAll(r),
    );

    _showLoading(false);
  }

  Future<void> searchRestaurant(String query) async {
    _showLoading(true);

    var result = await _restaurantService.searchRestaurant(query);
    result.fold(
      (l) {
        _showErrorMessage = true;
        _errorMessage = NetworkException.getMessageError(l);
      },
      (r) {
        _showErrorMessage = false;
        if (r.isEmpty) {
          _emptyResult = true;
          _errorMessage = "Result Not Found";
        } else {
          _restaurants.addAll(r);
          _emptyResult = false;
        }
      },
    );

    _showLoading(false);
  }

  void _showLoading(bool show) {
    _loading = show;
    notifyListeners();
  }
}

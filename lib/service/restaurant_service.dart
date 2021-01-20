import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:warung_makan/model/no_data_error.dart';
import 'package:warung_makan/model/restaurant_response.dart';
import 'package:warung_makan/utils/parse_json.dart';

class RestaurantService {
  Future<Either<NoDataError, List<Restaurants>>> loadRestaurantList() async {
    RestaurantResponse restaurants = await _restaurantFromJson();
    if (restaurants != null || restaurants.restaurants.isNotEmpty) {
      return Right(restaurants.restaurants);
    } else {
      return Left(NoDataError());
    }
  }

  Future<RestaurantResponse> _restaurantFromJson() async {
    var json = await loadFromAssets('assets/local_restaurant.json');
    return RestaurantResponse.fromJson(jsonDecode(json));
  }
}

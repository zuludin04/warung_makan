import 'package:warung_makan/data/model/favorite_entity.dart';
import 'package:warung_makan/data/model/restaurant_response.dart';

class Restaurant {
  String restaurantId;
  String name;
  String image;
  String city;
  String rating;

  Restaurant(
      {this.restaurantId, this.name, this.image, this.city, this.rating});

  Restaurant.fromDb(FavoriteEntity entity) {
    restaurantId = entity.restaurantId;
    name = entity.name;
    image = entity.image;
    city = entity.city;
    rating = entity.rating;
  }

  Restaurant.fromApi(RestaurantResult result) {
    restaurantId = result.id;
    name = result.name;
    image = result.pictureId;
    city = result.city;
    rating = '${result.rating}';
  }
}

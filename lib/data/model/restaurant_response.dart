class RestaurantResponse {
  bool error;
  String message;
  int count;
  List<RestaurantResult> restaurants;

  RestaurantResponse({
      this.error, 
      this.message, 
      this.count, 
      this.restaurants});

  RestaurantResponse.fromJson(dynamic json) {
    error = json["error"];
    message = json["message"];
    count = json["count"];
    if (json["restaurants"] != null) {
      restaurants = [];
      json["restaurants"].forEach((v) {
        restaurants.add(RestaurantResult.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["error"] = error;
    map["message"] = message;
    map["count"] = count;
    if (restaurants != null) {
      map["restaurants"] = restaurants.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class RestaurantResult {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;

  RestaurantResult({
      this.id, 
      this.name, 
      this.description, 
      this.pictureId, 
      this.city, 
      this.rating});

  RestaurantResult.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    pictureId = json["pictureId"];
    city = json["city"];
    rating = json["rating"].toDouble();
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["description"] = description;
    map["pictureId"] = pictureId;
    map["city"] = city;
    map["rating"] = rating;
    return map;
  }

}
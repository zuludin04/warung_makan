class FavoriteEntity {
  int id;
  String restaurantId;
  String name;
  String image;
  String city;
  String rating;

  FavoriteEntity(
      {this.id,
      this.restaurantId,
      this.name,
      this.image,
      this.city,
      this.rating});

  FavoriteEntity.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    restaurantId = map['restaurantId'];
    name = map['name'];
    image = map['image'];
    city = map['city'];
    rating = map['rating'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();
    map['id'] = id;
    map['restaurantId'] = restaurantId;
    map['name'] = name;
    map['image'] = image;
    map['city'] = city;
    map['rating'] = rating;
    return map;
  }
}

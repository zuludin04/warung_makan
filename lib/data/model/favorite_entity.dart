class FavoriteEntity {
  int id;
  String name;
  String image;
  String city;
  String rating;

  FavoriteEntity({this.id, this.name, this.image, this.city, this.rating});

  FavoriteEntity.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    image = map['image'];
    city = map['city'];
    rating = map['rating'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    map['city'] = city;
    map['rating'] = rating;
    return map;
  }
}

class DetailResponse {
  bool error;
  String message;
  Restaurant restaurant;

  DetailResponse({this.error, this.message, this.restaurant});

  DetailResponse.fromJson(dynamic json) {
    error = json["error"];
    message = json["message"];
    restaurant = json["restaurant"] != null
        ? Restaurant.fromJson(json["restaurant"])
        : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["error"] = error;
    map["message"] = message;
    if (restaurant != null) {
      map["restaurant"] = restaurant.toJson();
    }
    return map;
  }
}

class Restaurant {
  String id;
  String name;
  String description;
  String city;
  String address;
  String pictureId;
  List<Categories> categories;
  Menus menus;
  double rating;
  List<CustomerReviews> customerReviews;

  Restaurant(
      {this.id,
      this.name,
      this.description,
      this.city,
      this.address,
      this.pictureId,
      this.categories,
      this.menus,
      this.rating,
      this.customerReviews});

  Restaurant.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    city = json["city"];
    address = json["address"];
    pictureId = json["pictureId"];
    if (json["categories"] != null) {
      categories = [];
      json["categories"].forEach((v) {
        categories.add(Categories.fromJson(v));
      });
    }
    menus = json["menus"] != null ? Menus.fromJson(json["menus"]) : null;
    rating = json["rating"].toDouble();
    if (json["customerReviews"] != null) {
      customerReviews = [];
      json["customerReviews"].forEach((v) {
        customerReviews.add(CustomerReviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["description"] = description;
    map["city"] = city;
    map["address"] = address;
    map["pictureId"] = pictureId;
    if (categories != null) {
      map["categories"] = categories.map((v) => v.toJson()).toList();
    }
    if (menus != null) {
      map["menus"] = menus.toJson();
    }
    map["rating"] = rating;
    if (customerReviews != null) {
      map["customerReviews"] = customerReviews.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class CustomerReviews {
  String name;
  String review;
  String date;

  CustomerReviews({this.name, this.review, this.date});

  CustomerReviews.fromJson(dynamic json) {
    name = json["name"];
    review = json["review"];
    date = json["date"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["review"] = review;
    map["date"] = date;
    return map;
  }
}

class Menus {
  List<Foods> foods;
  List<Drinks> drinks;

  Menus({this.foods, this.drinks});

  Menus.fromJson(dynamic json) {
    if (json["foods"] != null) {
      foods = [];
      json["foods"].forEach((v) {
        foods.add(Foods.fromJson(v));
      });
    }
    if (json["drinks"] != null) {
      drinks = [];
      json["drinks"].forEach((v) {
        drinks.add(Drinks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (foods != null) {
      map["foods"] = foods.map((v) => v.toJson()).toList();
    }
    if (drinks != null) {
      map["drinks"] = drinks.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Drinks {
  String name;

  Drinks({this.name});

  Drinks.fromJson(dynamic json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    return map;
  }
}

class Foods {
  String name;

  Foods({this.name});

  Foods.fromJson(dynamic json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    return map;
  }
}

class Categories {
  String name;

  Categories({this.name});

  Categories.fromJson(dynamic json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    return map;
  }
}

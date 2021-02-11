import 'package:flutter/material.dart';
import 'package:warung_makan/ui/search/widget/restaurant_search_body.dart';

class RestaurantSearchScreen extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () => query = "",
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => Navigator.pop(context),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return RestaurantSearch(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column();
  }

  @override
  String get searchFieldLabel => "Search Restaurant Name, Category or Menu";

  @override
  TextStyle get searchFieldStyle => TextStyle(
    color: Colors.white54,
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
  );
}
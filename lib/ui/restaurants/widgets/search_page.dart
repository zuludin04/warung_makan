import 'package:flutter/material.dart';
import 'package:warung_makan/ui/restaurants/widgets/restaurant_search.dart';

class Search extends SearchDelegate {
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
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context).copyWith(
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
    assert(theme != null);
    return theme;
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

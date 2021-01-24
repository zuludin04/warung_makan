import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/ui/detail/restaurant_detail_screen.dart';
import 'package:warung_makan/ui/restaurants/restaurants_screen.dart';
import 'package:warung_makan/ui/restaurants/viewmodel/restaurants_viewmodel.dart';
import 'package:warung_makan/utils/constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RestaurantPageRoute:
      return _getPageRoute(
        name: settings.name,
        page: ChangeNotifierProvider<RestaurantsViewModel>(
          create: (_) => RestaurantsViewModel()..loadRestaurantList(),
          child: RestaurantsScreen(),
        ),
      );
    case DetailRestaurantPageRoute:
      return _getPageRoute(
          name: settings.name,
          page: RestaurantDetailScreen(restaurant: settings.arguments));
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({String name, Widget page}) {
  return MaterialPageRoute(
      builder: (_) => page, settings: RouteSettings(name: name));
}

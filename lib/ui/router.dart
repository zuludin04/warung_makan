import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/di/injector.dart';
import 'package:warung_makan/ui/detail/cubits/detail/restaurant_detail_cubit.dart';
import 'package:warung_makan/ui/detail/restaurant_detail_screen.dart';
import 'package:warung_makan/ui/favorite/favorite_restaurant_screen.dart';
import 'package:warung_makan/ui/home/home_screen.dart';
import 'package:warung_makan/ui/splash/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashPageRoute:
      return _getPageRoute(name: settings.name, page: SplashScreen());
    case HomePageRoute:
      return _getPageRoute(name: settings.name, page: HomeScreen());
    case DetailRestaurantPageRoute:
      return _getPageRoute(
          name: settings.name,
          page: BlocProvider<RestaurantDetailCubit>(
              create: (context) => injector<RestaurantDetailCubit>()
                ..showDetailRestaurant(settings.arguments),
              child: RestaurantDetailScreen(restaurant: settings.arguments)));
    case FavoritePageRoute:
      return _getPageRoute(
        name: settings.name,
        page: FavoriteRestaurantScreen(),
      );
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

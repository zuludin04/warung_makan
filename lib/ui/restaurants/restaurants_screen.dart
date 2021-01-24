import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/commons/error_message.dart';
import 'package:warung_makan/ui/restaurants/viewmodel/restaurants_viewmodel.dart';
import 'package:warung_makan/ui/restaurants/widgets/restaurant_item.dart';
import 'package:warung_makan/ui/restaurants/widgets/search_page.dart';

class RestaurantsScreen extends StatefulWidget {
  @override
  _RestaurantsScreenState createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 100,
              elevation: 0.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Warung Makan',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () => showSearch(context: context, delegate: Search()),
                  icon: Icon(Icons.search),
                )
              ],
            ),
          ];
        },
        body: Center(
          child: Consumer<RestaurantsViewModel>(
            builder: (context, model, child) {
              if (model.loading) return CircularProgressIndicator();
              if (model.showErrorMessage)
                return ErrorMessage(
                  isError: true,
                  errorMessage: model.errorMessage,
                  retryButton: () => model.loadRestaurantList(),
                );
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return RestaurantItem(restaurants: model.restaurants[index]);
                },
                itemCount: model.restaurants.length,
              );
            },
          ),
        ),
      ),
    );
  }
}

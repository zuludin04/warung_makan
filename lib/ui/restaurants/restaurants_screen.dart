import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      appBar: AppBar(
        title: Text('Warung Makan'),
        actions: [
          IconButton(
            onPressed: () => showSearch(context: context, delegate: Search()),
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Consumer<RestaurantsViewModel>(
          builder: (context, model, child) {
            if (model.loading) return CircularProgressIndicator();
            if (model.showErrorMessage) return Text('Can\'t Show Restaurant');
            return ListView.builder(
              itemBuilder: (context, index) {
                return RestaurantItem(restaurants: model.restaurants[index]);
              },
              itemCount: model.restaurants.length,
            );
          },
        ),
      ),
    );
  }
}

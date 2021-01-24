import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/ui/detail/viewmodel/restaurant_detail_viewmodel.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final String restaurantId;

  RestaurantDetailScreen({Key key, this.restaurantId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<RestaurantDetailViewModel>(
        create: (_) =>
            RestaurantDetailViewModel()..loadDetailRestaurant(restaurantId),
        child: Center(
          child: Consumer<RestaurantDetailViewModel>(
            builder: (context, model, child) {
              if (model.loading) return CircularProgressIndicator();
              return CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Stack(
                        children: [
                          Image.network(
                              'https://restaurant-api.dicoding.dev/images/large/${model.restaurant.pictureId}'),
                          SafeArea(
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 8.0, right: 8.0, bottom: 4.0),
                        child: Text(
                          model.restaurant.name,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 16.0,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 3.0),
                            Text(
                              model.restaurant.city,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0),
                      _headerText('Description'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          model.restaurant.description,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      _headerText('Foods'),
                      SizedBox(height: 8.0),
                    ]),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: model.restaurant.menus.foods.length,
                        itemBuilder: (context, index) => _foodAndDrinkItem(
                            context, model.restaurant.menus.foods[index].name),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                        [SizedBox(height: 15.0), _headerText('Drinks')]),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: model.restaurant.menus.drinks.length,
                        itemBuilder: (context, index) => _foodAndDrinkItem(
                            context, model.restaurant.menus.drinks[index].name),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _foodAndDrinkItem(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: EdgeInsets.all(16.0),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _headerText(String header) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        header,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }
}
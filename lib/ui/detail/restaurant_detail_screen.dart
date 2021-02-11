import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/restaurant_response.dart';
import 'package:warung_makan/ui/detail/viewmodel/restaurant_detail_viewmodel.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final Restaurants restaurant;

  RestaurantDetailScreen({Key key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ChangeNotifierProvider<RestaurantDetailViewModel>(
        create: (_) =>
            RestaurantDetailViewModel()..loadDetailRestaurant(restaurant.id),
        child: Container(
          child: SlidingUpPanel(
            maxHeight: size.height,
            minHeight: size.height / 1.4,
            parallaxEnabled: true,
            parallaxOffset: 0.55,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: Radius.circular(18.0),
            ),
            body: Stack(
              children: [
                Hero(
                  tag: restaurant.pictureId,
                  child: Image.network(
                    'https://restaurant-api.dicoding.dev/images/large/${restaurant.pictureId}',
                    height: size.height / 2.2,
                    fit: BoxFit.fill,
                  ),
                ),
                SafeArea(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
            panelBuilder: (controller) => SafeArea(
              child: Center(
                child: Consumer<RestaurantDetailViewModel>(
                  builder: (context, model, child) {
                    if (model.loading) return CircularProgressIndicator();
                    return CustomScrollView(
                      controller: controller,
                      physics: BouncingScrollPhysics(),
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate([
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
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
                            SizedBox(height: 10.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: model.restaurant.categories
                                    .map((e) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColorLight,
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              e.name,
                                              style: TextStyle(
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            _headerText('Description'),
                            SizedBox(height: 8.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
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
                              itemBuilder: (context, index) =>
                                  _foodAndDrinkItem(context,
                                      model.restaurant.menus.foods[index].name),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildListDelegate([
                            SizedBox(height: 15.0),
                            _headerText('Drinks'),
                            SizedBox(height: 8.0),
                          ]),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            height: 50,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: model.restaurant.menus.drinks.length,
                              itemBuilder: (context, index) =>
                                  _foodAndDrinkItem(
                                      context,
                                      model
                                          .restaurant.menus.drinks[index].name),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildListDelegate([
                            SizedBox(height: 15.0),
                            _headerText('Reviews'),
                            SizedBox(height: 8.0),
                          ]),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (context, index) => _reviewRestaurant(
                                  model.restaurant.customerReviews[index]),
                              childCount:
                                  model.restaurant.customerReviews.length),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
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

  Widget _reviewRestaurant(CustomerReviews reviews) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80.0,
              child: Text(reviews.review),
            ),
            Text(
              '${reviews.name} - ${reviews.date}',
              style: TextStyle(
                fontSize: 12.0,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
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

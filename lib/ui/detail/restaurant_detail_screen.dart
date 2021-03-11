import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:warung_makan/core/commons/error_message.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/ui/detail/cubits/detail/restaurant_detail_cubit.dart';
import 'package:warung_makan/ui/detail/widgets/favorite_button.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantDetailScreen({Key key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
                tag: restaurant.image,
                child: Image.network(
                  'https://restaurant-api.dicoding.dev/images/large/${restaurant.image}',
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
              child: BlocBuilder<RestaurantDetailCubit, RestaurantDetailState>(
                builder: (context, state) {
                  return state.map(
                    initialDetail: (_) => Container(),
                    loadingDetail: (_) => CircularProgressIndicator(),
                    showRestaurantDetail: (detail) => CustomScrollView(
                      controller: controller,
                      physics: BouncingScrollPhysics(),
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate([
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0,
                                          left: 8.0,
                                          right: 8.0,
                                          bottom: 4.0),
                                      child: Text(
                                        detail.restaurant.name,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            size: 16.0,
                                            color: Colors.black54,
                                          ),
                                          SizedBox(width: 3.0),
                                          Text(
                                            detail.restaurant.city,
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
                                  ],
                                ),
                                FavoriteButton(restaurant: detail.restaurant),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: detail.restaurant.categories
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
                                detail.restaurant.description,
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
                              itemCount: detail.restaurant.menus.foods.length,
                              itemBuilder: (context, index) =>
                                  _foodAndDrinkItem(
                                      context,
                                      detail
                                          .restaurant.menus.foods[index].name),
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
                              itemCount: detail.restaurant.menus.drinks.length,
                              itemBuilder: (context, index) =>
                                  _foodAndDrinkItem(
                                      context,
                                      detail
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
                                  detail.restaurant.customerReviews[index]),
                              childCount:
                                  detail.restaurant.customerReviews.length),
                        ),
                      ],
                    ),
                    failedShowDetail: (message) => ErrorMessage(
                      isError: true,
                      errorMessage: message.message,
                      retryButton: () => context
                          .read<RestaurantDetailCubit>()
                          .showDetailRestaurant(restaurant),
                    ),
                  );
                },
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

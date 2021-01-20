import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/model/restaurant_response.dart';
import 'package:warung_makan/ui/restaurants/viewmodel/restaurants_viewmodel.dart';
import 'package:warung_makan/utils/constants.dart';

class RestaurantsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warung Makan'),
      ),
      body: Center(
        child: Consumer<RestaurantsViewModel>(
          builder: (context, model, child) {
            if (model.loading) return CircularProgressIndicator();
            if (model.showErrorMessage) return Text('Can\'t Show Restaurant');
            return ListView.builder(
              itemBuilder: (context, index) {
                return _restaurantItem(context, model.restaurants[index]);
              },
              itemCount: model.restaurants.length,
            );
          },
        ),
      ),
    );
  }

  Widget _restaurantItem(BuildContext context, Restaurants restaurants) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, DetailRestaurantPageRoute,
          arguments: restaurants),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                child: Image.network(
                  restaurants.pictureId,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${restaurants.name} - ${restaurants.city}',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 16,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 3),
                          Text(
                            restaurants.city,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                            color: Colors.black87,
                          ),
                          SizedBox(width: 3),
                          Text(
                            '${restaurants.rating}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

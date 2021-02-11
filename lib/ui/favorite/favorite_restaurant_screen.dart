import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warung_makan/core/commons/error_message.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/data/model/favorite_entity.dart';
import 'package:warung_makan/ui/favorite/cubit/favorite_restaurant_cubit.dart';

class FavoriteRestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Restaurant',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Center(
        child: BlocBuilder<FavoriteRestaurantCubit, FavoriteRestaurantState>(
          builder: (context, state) {
            return state.map(
              initialFavorite: (_) => Container(),
              loadingFavorite: (_) => CircularProgressIndicator(),
              showFavorites: (fav) => ListView.builder(
                itemBuilder: (context, index) =>
                    _restaurantItem(context, fav.favorites[index]),
                itemCount: fav.favorites.length,
              ),
              emptyFavorite: (_) => ErrorMessage(
                isError: false,
                errorMessage: 'Favorite Restaurant is Empty',
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _restaurantItem(BuildContext context, FavoriteEntity restaurants) {
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
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Hero(
                  tag: restaurants.image,
                  child: Image.network(
                    'https://restaurant-api.dicoding.dev/images/medium/${restaurants.image}',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
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

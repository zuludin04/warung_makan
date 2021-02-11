import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:warung_makan/core/commons/error_message.dart';
import 'package:warung_makan/di/injector.dart';
import 'package:warung_makan/core/commons/restaurant_item.dart';
import 'package:warung_makan/ui/search/cubit/restaurant_search_cubit.dart';

class RestaurantSearch extends StatelessWidget {
  final String query;

  RestaurantSearch(this.query);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantSearchCubit>(
      create: (context) => injector<RestaurantSearchCubit>()..searchRestaurant(query),
      child: Center(
        child: BlocBuilder<RestaurantSearchCubit, RestaurantSearchState>(
          builder: (context, state) {
            return state.map(
              initialSearch: (_) => Container(),
              loadingSearch: (_) => CircularProgressIndicator(),
              showSearchResult: (results) => ListView.builder(
                itemBuilder: (context, index) {
                  return RestaurantItem(restaurants: results.results[index]);
                },
                itemCount: results.results.length,
              ),
              failedShowResult: (message) => ErrorMessage(
                isError: true,
                errorMessage: message.message,
                retryButton: () => context
                    .read<RestaurantSearchCubit>()
                    .searchRestaurant(query),
              ),
              emptyResult: (_) => ErrorMessage(
                isError: false,
                errorMessage: "Result Not Found",
              ),
            );
          },
        ),
      ),
    );
  }
}

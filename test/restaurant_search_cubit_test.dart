import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:warung_makan/core/utils/exception/network_exception.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';
import 'package:warung_makan/ui/search/cubit/restaurant_search_cubit.dart';

class MockWarungMakanRepository extends Mock implements WarungMakanRepository {}

void main() {
  MockWarungMakanRepository mockRepository;

  setUp(() {
    mockRepository = MockWarungMakanRepository();
  });

  group('testing search restaurant cubit', () {
    final List<Restaurant> restaurants = [
      Restaurant(restaurantId: 'sjfklje', name: 'Restaurant One'),
      Restaurant(restaurantId: 'fgjkrg', name: 'Restaurant Two'),
    ];
    final NetworkException exception =
        NetworkException.getDioException(Exception('Testing Exception'));

    blocTest(
      'success search restaurant',
      build: () {
        when(mockRepository.searchRestaurant('restaurant'))
            .thenAnswer((_) async => Right(restaurants));
        return RestaurantSearchCubit(mockRepository);
      },
      act: (RestaurantSearchCubit cubit) =>
          cubit.searchRestaurant('restaurant'),
      expect: [
        RestaurantSearchState.loadingSearch(),
        RestaurantSearchState.showSearchResult(restaurants),
      ],
    );

    blocTest(
      'error occurred when search restaurant',
      build: () {
        when(mockRepository.searchRestaurant('restaurant'))
            .thenAnswer((_) async => Left(exception));
        return RestaurantSearchCubit(mockRepository);
      },
      act: (RestaurantSearchCubit cubit) =>
          cubit.searchRestaurant('restaurant'),
      expect: [
        RestaurantSearchState.loadingSearch(),
        RestaurantSearchState.failedShowResult(
            NetworkException.getMessageError(exception)),
      ],
    );

    blocTest(
      'get empty result when search restaurant',
      build: () {
        when(mockRepository.searchRestaurant('restaurant'))
            .thenAnswer((_) async => Right(List<Restaurant>(0)));
        return RestaurantSearchCubit(mockRepository);
      },
      act: (RestaurantSearchCubit cubit) =>
          cubit.searchRestaurant('restaurant'),
      expect: [
        RestaurantSearchState.loadingSearch(),
        RestaurantSearchState.emptyResult(),
      ],
    );
  });
}

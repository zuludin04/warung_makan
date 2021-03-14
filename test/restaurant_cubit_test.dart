import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:warung_makan/core/utils/exception/network_exception.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';
import 'package:warung_makan/ui/home/cubits/restaurants_cubit.dart';

class MockWarungMakanRepository extends Mock implements WarungMakanRepository {}

void main() {
  MockWarungMakanRepository mockRepository;

  setUp(() {
    mockRepository = MockWarungMakanRepository();
  });

  group('testing load restaurant list', () {
    final List<Restaurant> restaurants = [
      Restaurant(restaurantId: 'sjfklje', name: 'Restaurant One'),
      Restaurant(restaurantId: 'fgjkrg', name: 'Restaurant Two'),
    ];
    final NetworkException exception =
        NetworkException.getDioException(Exception('Testing Exception'));

    blocTest(
      'load restaurant success',
      build: () {
        when(mockRepository.loadRestaurantList())
            .thenAnswer((_) async => Right(restaurants));
        return RestaurantsCubit(mockRepository);
      },
      act: (RestaurantsCubit cubit) => cubit.loadRestaurants(),
      expect: [
        RestaurantsState.loadingRestaurants(),
        RestaurantsState.showRestaurantList(restaurants),
      ],
    );

    blocTest(
      'error load restaurant list',
      build: () {
        when(mockRepository.loadRestaurantList())
            .thenAnswer((_) async => Left(exception));
        return RestaurantsCubit(mockRepository);
      },
      act: (RestaurantsCubit cubit) => cubit.loadRestaurants(),
      expect: [
        RestaurantsState.loadingRestaurants(),
        RestaurantsState.failedShowRestaurants(
            NetworkException.getMessageError(exception)),
      ],
    );
  });
}

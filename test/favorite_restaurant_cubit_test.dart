import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';
import 'package:warung_makan/ui/favorite/cubit/favorite_restaurant_cubit.dart';

class MockWarungMakanRepository extends Mock implements WarungMakanRepository {}

void main() {
  MockWarungMakanRepository mockRepository;

  setUp(() {
    mockRepository = MockWarungMakanRepository();
  });

  group('testing favorite cubit', () {
    final List<Restaurant> restaurants = [
      Restaurant(restaurantId: 'sjfklje', name: 'Restaurant One'),
      Restaurant(restaurantId: 'fgjkrg', name: 'Restaurant Two'),
    ];

    blocTest(
      'show restaurant favorite test',
      build: () {
        when(mockRepository.loadFavoriteRestaurant())
            .thenAnswer((_) async => restaurants);
        return FavoriteRestaurantCubit(mockRepository);
      },
      act: (FavoriteRestaurantCubit cubit) => cubit.loadFavoriteRestaurant(),
      expect: [
        FavoriteRestaurantState.loadingFavorite(),
        FavoriteRestaurantState.showFavorites(restaurants),
      ],
    );

    blocTest(
      'test when favorite restaurant is empty',
      build: () {
        when(mockRepository.loadFavoriteRestaurant())
            .thenAnswer((_) async => List<Restaurant>(0));
        return FavoriteRestaurantCubit(mockRepository);
      },
      act: (FavoriteRestaurantCubit cubit) => cubit.loadFavoriteRestaurant(),
      expect: [
        FavoriteRestaurantState.loadingFavorite(),
        FavoriteRestaurantState.emptyFavorite(),
      ],
    );
  });
}

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:warung_makan/core/utils/exception/network_exception.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/warung_makan_repository.dart';
import 'package:warung_makan/ui/detail/cubits/detail/restaurant_detail_cubit.dart';

class MockWarungMakanRepository extends Mock implements WarungMakanRepository {}

void main() {
  MockWarungMakanRepository mockRepository;

  setUp(() {
    mockRepository = MockWarungMakanRepository();
  });

  group('testing detail restaurant cubit', () {
    Restaurant restaurant =
        Restaurant(restaurantId: 'sjfklje', name: 'Restaurant One');
    DetailRestaurant detail =
        DetailRestaurant(id: 'sjfklje', name: 'Restaurant One');
    final NetworkException exception =
        NetworkException.getDioException(Exception('Testing Exception'));

    blocTest(
      'load success when load detail restaurant',
      build: () {
        when(mockRepository.loadDetailRestaurant('sjfklje'))
            .thenAnswer((_) async => Right(detail));
        return RestaurantDetailCubit(mockRepository);
      },
      act: (RestaurantDetailCubit cubit) =>
          cubit.showDetailRestaurant(restaurant),
      expect: [
        RestaurantDetailState.loadingDetail(),
        RestaurantDetailState.showRestaurantDetail(detail),
      ],
    );

    blocTest(
      'failed when loading detail restaurant',
      build: () {
        when(mockRepository.loadDetailRestaurant('sjfklje'))
            .thenAnswer((_) async => Left(exception));
        return RestaurantDetailCubit(mockRepository);
      },
      act: (RestaurantDetailCubit cubit) =>
          cubit.showDetailRestaurant(restaurant),
      expect: [
        RestaurantDetailState.loadingDetail(),
        RestaurantDetailState.failedShowDetail(
            NetworkException.getMessageError(exception)),
      ],
    );
  });
}

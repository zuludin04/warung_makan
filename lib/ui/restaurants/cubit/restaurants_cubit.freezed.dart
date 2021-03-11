// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurants_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RestaurantsStateTearOff {
  const _$RestaurantsStateTearOff();

// ignore: unused_element
  InitialRestaurants initialRestaurants() {
    return const InitialRestaurants();
  }

// ignore: unused_element
  LoadingRestaurants loadingRestaurants() {
    return const LoadingRestaurants();
  }

// ignore: unused_element
  ShowRestaurantList showRestaurantList(List<Restaurant> restaurants) {
    return ShowRestaurantList(
      restaurants,
    );
  }

// ignore: unused_element
  FailedShowRestaurants failedShowRestaurants(String message) {
    return FailedShowRestaurants(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RestaurantsState = _$RestaurantsStateTearOff();

/// @nodoc
mixin _$RestaurantsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialRestaurants(),
    @required TResult loadingRestaurants(),
    @required TResult showRestaurantList(List<Restaurant> restaurants),
    @required TResult failedShowRestaurants(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialRestaurants(),
    TResult loadingRestaurants(),
    TResult showRestaurantList(List<Restaurant> restaurants),
    TResult failedShowRestaurants(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialRestaurants(InitialRestaurants value),
    @required TResult loadingRestaurants(LoadingRestaurants value),
    @required TResult showRestaurantList(ShowRestaurantList value),
    @required TResult failedShowRestaurants(FailedShowRestaurants value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialRestaurants(InitialRestaurants value),
    TResult loadingRestaurants(LoadingRestaurants value),
    TResult showRestaurantList(ShowRestaurantList value),
    TResult failedShowRestaurants(FailedShowRestaurants value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RestaurantsStateCopyWith<$Res> {
  factory $RestaurantsStateCopyWith(
          RestaurantsState value, $Res Function(RestaurantsState) then) =
      _$RestaurantsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantsStateCopyWithImpl<$Res>
    implements $RestaurantsStateCopyWith<$Res> {
  _$RestaurantsStateCopyWithImpl(this._value, this._then);

  final RestaurantsState _value;
  // ignore: unused_field
  final $Res Function(RestaurantsState) _then;
}

/// @nodoc
abstract class $InitialRestaurantsCopyWith<$Res> {
  factory $InitialRestaurantsCopyWith(
          InitialRestaurants value, $Res Function(InitialRestaurants) then) =
      _$InitialRestaurantsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialRestaurantsCopyWithImpl<$Res>
    extends _$RestaurantsStateCopyWithImpl<$Res>
    implements $InitialRestaurantsCopyWith<$Res> {
  _$InitialRestaurantsCopyWithImpl(
      InitialRestaurants _value, $Res Function(InitialRestaurants) _then)
      : super(_value, (v) => _then(v as InitialRestaurants));

  @override
  InitialRestaurants get _value => super._value as InitialRestaurants;
}

/// @nodoc
class _$InitialRestaurants implements InitialRestaurants {
  const _$InitialRestaurants();

  @override
  String toString() {
    return 'RestaurantsState.initialRestaurants()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialRestaurants);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialRestaurants(),
    @required TResult loadingRestaurants(),
    @required TResult showRestaurantList(List<Restaurant> restaurants),
    @required TResult failedShowRestaurants(String message),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return initialRestaurants();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialRestaurants(),
    TResult loadingRestaurants(),
    TResult showRestaurantList(List<Restaurant> restaurants),
    TResult failedShowRestaurants(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialRestaurants != null) {
      return initialRestaurants();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialRestaurants(InitialRestaurants value),
    @required TResult loadingRestaurants(LoadingRestaurants value),
    @required TResult showRestaurantList(ShowRestaurantList value),
    @required TResult failedShowRestaurants(FailedShowRestaurants value),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return initialRestaurants(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialRestaurants(InitialRestaurants value),
    TResult loadingRestaurants(LoadingRestaurants value),
    TResult showRestaurantList(ShowRestaurantList value),
    TResult failedShowRestaurants(FailedShowRestaurants value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialRestaurants != null) {
      return initialRestaurants(this);
    }
    return orElse();
  }
}

abstract class InitialRestaurants implements RestaurantsState {
  const factory InitialRestaurants() = _$InitialRestaurants;
}

/// @nodoc
abstract class $LoadingRestaurantsCopyWith<$Res> {
  factory $LoadingRestaurantsCopyWith(
          LoadingRestaurants value, $Res Function(LoadingRestaurants) then) =
      _$LoadingRestaurantsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingRestaurantsCopyWithImpl<$Res>
    extends _$RestaurantsStateCopyWithImpl<$Res>
    implements $LoadingRestaurantsCopyWith<$Res> {
  _$LoadingRestaurantsCopyWithImpl(
      LoadingRestaurants _value, $Res Function(LoadingRestaurants) _then)
      : super(_value, (v) => _then(v as LoadingRestaurants));

  @override
  LoadingRestaurants get _value => super._value as LoadingRestaurants;
}

/// @nodoc
class _$LoadingRestaurants implements LoadingRestaurants {
  const _$LoadingRestaurants();

  @override
  String toString() {
    return 'RestaurantsState.loadingRestaurants()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingRestaurants);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialRestaurants(),
    @required TResult loadingRestaurants(),
    @required TResult showRestaurantList(List<Restaurant> restaurants),
    @required TResult failedShowRestaurants(String message),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return loadingRestaurants();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialRestaurants(),
    TResult loadingRestaurants(),
    TResult showRestaurantList(List<Restaurant> restaurants),
    TResult failedShowRestaurants(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingRestaurants != null) {
      return loadingRestaurants();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialRestaurants(InitialRestaurants value),
    @required TResult loadingRestaurants(LoadingRestaurants value),
    @required TResult showRestaurantList(ShowRestaurantList value),
    @required TResult failedShowRestaurants(FailedShowRestaurants value),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return loadingRestaurants(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialRestaurants(InitialRestaurants value),
    TResult loadingRestaurants(LoadingRestaurants value),
    TResult showRestaurantList(ShowRestaurantList value),
    TResult failedShowRestaurants(FailedShowRestaurants value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingRestaurants != null) {
      return loadingRestaurants(this);
    }
    return orElse();
  }
}

abstract class LoadingRestaurants implements RestaurantsState {
  const factory LoadingRestaurants() = _$LoadingRestaurants;
}

/// @nodoc
abstract class $ShowRestaurantListCopyWith<$Res> {
  factory $ShowRestaurantListCopyWith(
          ShowRestaurantList value, $Res Function(ShowRestaurantList) then) =
      _$ShowRestaurantListCopyWithImpl<$Res>;
  $Res call({List<Restaurant> restaurants});
}

/// @nodoc
class _$ShowRestaurantListCopyWithImpl<$Res>
    extends _$RestaurantsStateCopyWithImpl<$Res>
    implements $ShowRestaurantListCopyWith<$Res> {
  _$ShowRestaurantListCopyWithImpl(
      ShowRestaurantList _value, $Res Function(ShowRestaurantList) _then)
      : super(_value, (v) => _then(v as ShowRestaurantList));

  @override
  ShowRestaurantList get _value => super._value as ShowRestaurantList;

  @override
  $Res call({
    Object restaurants = freezed,
  }) {
    return _then(ShowRestaurantList(
      restaurants == freezed
          ? _value.restaurants
          : restaurants as List<Restaurant>,
    ));
  }
}

/// @nodoc
class _$ShowRestaurantList implements ShowRestaurantList {
  const _$ShowRestaurantList(this.restaurants) : assert(restaurants != null);

  @override
  final List<Restaurant> restaurants;

  @override
  String toString() {
    return 'RestaurantsState.showRestaurantList(restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowRestaurantList &&
            (identical(other.restaurants, restaurants) ||
                const DeepCollectionEquality()
                    .equals(other.restaurants, restaurants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurants);

  @JsonKey(ignore: true)
  @override
  $ShowRestaurantListCopyWith<ShowRestaurantList> get copyWith =>
      _$ShowRestaurantListCopyWithImpl<ShowRestaurantList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialRestaurants(),
    @required TResult loadingRestaurants(),
    @required TResult showRestaurantList(List<Restaurant> restaurants),
    @required TResult failedShowRestaurants(String message),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return showRestaurantList(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialRestaurants(),
    TResult loadingRestaurants(),
    TResult showRestaurantList(List<Restaurant> restaurants),
    TResult failedShowRestaurants(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showRestaurantList != null) {
      return showRestaurantList(restaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialRestaurants(InitialRestaurants value),
    @required TResult loadingRestaurants(LoadingRestaurants value),
    @required TResult showRestaurantList(ShowRestaurantList value),
    @required TResult failedShowRestaurants(FailedShowRestaurants value),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return showRestaurantList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialRestaurants(InitialRestaurants value),
    TResult loadingRestaurants(LoadingRestaurants value),
    TResult showRestaurantList(ShowRestaurantList value),
    TResult failedShowRestaurants(FailedShowRestaurants value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showRestaurantList != null) {
      return showRestaurantList(this);
    }
    return orElse();
  }
}

abstract class ShowRestaurantList implements RestaurantsState {
  const factory ShowRestaurantList(List<Restaurant> restaurants) =
      _$ShowRestaurantList;

  List<Restaurant> get restaurants;
  @JsonKey(ignore: true)
  $ShowRestaurantListCopyWith<ShowRestaurantList> get copyWith;
}

/// @nodoc
abstract class $FailedShowRestaurantsCopyWith<$Res> {
  factory $FailedShowRestaurantsCopyWith(FailedShowRestaurants value,
          $Res Function(FailedShowRestaurants) then) =
      _$FailedShowRestaurantsCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailedShowRestaurantsCopyWithImpl<$Res>
    extends _$RestaurantsStateCopyWithImpl<$Res>
    implements $FailedShowRestaurantsCopyWith<$Res> {
  _$FailedShowRestaurantsCopyWithImpl(
      FailedShowRestaurants _value, $Res Function(FailedShowRestaurants) _then)
      : super(_value, (v) => _then(v as FailedShowRestaurants));

  @override
  FailedShowRestaurants get _value => super._value as FailedShowRestaurants;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FailedShowRestaurants(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$FailedShowRestaurants implements FailedShowRestaurants {
  const _$FailedShowRestaurants(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RestaurantsState.failedShowRestaurants(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailedShowRestaurants &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FailedShowRestaurantsCopyWith<FailedShowRestaurants> get copyWith =>
      _$FailedShowRestaurantsCopyWithImpl<FailedShowRestaurants>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialRestaurants(),
    @required TResult loadingRestaurants(),
    @required TResult showRestaurantList(List<Restaurant> restaurants),
    @required TResult failedShowRestaurants(String message),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return failedShowRestaurants(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialRestaurants(),
    TResult loadingRestaurants(),
    TResult showRestaurantList(List<Restaurant> restaurants),
    TResult failedShowRestaurants(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failedShowRestaurants != null) {
      return failedShowRestaurants(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialRestaurants(InitialRestaurants value),
    @required TResult loadingRestaurants(LoadingRestaurants value),
    @required TResult showRestaurantList(ShowRestaurantList value),
    @required TResult failedShowRestaurants(FailedShowRestaurants value),
  }) {
    assert(initialRestaurants != null);
    assert(loadingRestaurants != null);
    assert(showRestaurantList != null);
    assert(failedShowRestaurants != null);
    return failedShowRestaurants(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialRestaurants(InitialRestaurants value),
    TResult loadingRestaurants(LoadingRestaurants value),
    TResult showRestaurantList(ShowRestaurantList value),
    TResult failedShowRestaurants(FailedShowRestaurants value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failedShowRestaurants != null) {
      return failedShowRestaurants(this);
    }
    return orElse();
  }
}

abstract class FailedShowRestaurants implements RestaurantsState {
  const factory FailedShowRestaurants(String message) = _$FailedShowRestaurants;

  String get message;
  @JsonKey(ignore: true)
  $FailedShowRestaurantsCopyWith<FailedShowRestaurants> get copyWith;
}

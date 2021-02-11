// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RestaurantDetailStateTearOff {
  const _$RestaurantDetailStateTearOff();

// ignore: unused_element
  InitialDetail initialDetail() {
    return const InitialDetail();
  }

// ignore: unused_element
  LoadingDetail loadingDetail() {
    return const LoadingDetail();
  }

// ignore: unused_element
  ShowRestaurantDetail showRestaurantDetail(Restaurant restaurant) {
    return ShowRestaurantDetail(
      restaurant,
    );
  }

// ignore: unused_element
  FailedShowDetail failedShowDetail(String message) {
    return FailedShowDetail(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RestaurantDetailState = _$RestaurantDetailStateTearOff();

/// @nodoc
mixin _$RestaurantDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialDetail(),
    @required TResult loadingDetail(),
    @required TResult showRestaurantDetail(Restaurant restaurant),
    @required TResult failedShowDetail(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialDetail(),
    TResult loadingDetail(),
    TResult showRestaurantDetail(Restaurant restaurant),
    TResult failedShowDetail(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialDetail(InitialDetail value),
    @required TResult loadingDetail(LoadingDetail value),
    @required TResult showRestaurantDetail(ShowRestaurantDetail value),
    @required TResult failedShowDetail(FailedShowDetail value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialDetail(InitialDetail value),
    TResult loadingDetail(LoadingDetail value),
    TResult showRestaurantDetail(ShowRestaurantDetail value),
    TResult failedShowDetail(FailedShowDetail value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RestaurantDetailStateCopyWith<$Res> {
  factory $RestaurantDetailStateCopyWith(RestaurantDetailState value,
          $Res Function(RestaurantDetailState) then) =
      _$RestaurantDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantDetailStateCopyWithImpl<$Res>
    implements $RestaurantDetailStateCopyWith<$Res> {
  _$RestaurantDetailStateCopyWithImpl(this._value, this._then);

  final RestaurantDetailState _value;
  // ignore: unused_field
  final $Res Function(RestaurantDetailState) _then;
}

/// @nodoc
abstract class $InitialDetailCopyWith<$Res> {
  factory $InitialDetailCopyWith(
          InitialDetail value, $Res Function(InitialDetail) then) =
      _$InitialDetailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialDetailCopyWithImpl<$Res>
    extends _$RestaurantDetailStateCopyWithImpl<$Res>
    implements $InitialDetailCopyWith<$Res> {
  _$InitialDetailCopyWithImpl(
      InitialDetail _value, $Res Function(InitialDetail) _then)
      : super(_value, (v) => _then(v as InitialDetail));

  @override
  InitialDetail get _value => super._value as InitialDetail;
}

/// @nodoc
class _$InitialDetail implements InitialDetail {
  const _$InitialDetail();

  @override
  String toString() {
    return 'RestaurantDetailState.initialDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialDetail(),
    @required TResult loadingDetail(),
    @required TResult showRestaurantDetail(Restaurant restaurant),
    @required TResult failedShowDetail(String message),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return initialDetail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialDetail(),
    TResult loadingDetail(),
    TResult showRestaurantDetail(Restaurant restaurant),
    TResult failedShowDetail(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialDetail != null) {
      return initialDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialDetail(InitialDetail value),
    @required TResult loadingDetail(LoadingDetail value),
    @required TResult showRestaurantDetail(ShowRestaurantDetail value),
    @required TResult failedShowDetail(FailedShowDetail value),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return initialDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialDetail(InitialDetail value),
    TResult loadingDetail(LoadingDetail value),
    TResult showRestaurantDetail(ShowRestaurantDetail value),
    TResult failedShowDetail(FailedShowDetail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialDetail != null) {
      return initialDetail(this);
    }
    return orElse();
  }
}

abstract class InitialDetail implements RestaurantDetailState {
  const factory InitialDetail() = _$InitialDetail;
}

/// @nodoc
abstract class $LoadingDetailCopyWith<$Res> {
  factory $LoadingDetailCopyWith(
          LoadingDetail value, $Res Function(LoadingDetail) then) =
      _$LoadingDetailCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingDetailCopyWithImpl<$Res>
    extends _$RestaurantDetailStateCopyWithImpl<$Res>
    implements $LoadingDetailCopyWith<$Res> {
  _$LoadingDetailCopyWithImpl(
      LoadingDetail _value, $Res Function(LoadingDetail) _then)
      : super(_value, (v) => _then(v as LoadingDetail));

  @override
  LoadingDetail get _value => super._value as LoadingDetail;
}

/// @nodoc
class _$LoadingDetail implements LoadingDetail {
  const _$LoadingDetail();

  @override
  String toString() {
    return 'RestaurantDetailState.loadingDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialDetail(),
    @required TResult loadingDetail(),
    @required TResult showRestaurantDetail(Restaurant restaurant),
    @required TResult failedShowDetail(String message),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return loadingDetail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialDetail(),
    TResult loadingDetail(),
    TResult showRestaurantDetail(Restaurant restaurant),
    TResult failedShowDetail(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingDetail != null) {
      return loadingDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialDetail(InitialDetail value),
    @required TResult loadingDetail(LoadingDetail value),
    @required TResult showRestaurantDetail(ShowRestaurantDetail value),
    @required TResult failedShowDetail(FailedShowDetail value),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return loadingDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialDetail(InitialDetail value),
    TResult loadingDetail(LoadingDetail value),
    TResult showRestaurantDetail(ShowRestaurantDetail value),
    TResult failedShowDetail(FailedShowDetail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingDetail != null) {
      return loadingDetail(this);
    }
    return orElse();
  }
}

abstract class LoadingDetail implements RestaurantDetailState {
  const factory LoadingDetail() = _$LoadingDetail;
}

/// @nodoc
abstract class $ShowRestaurantDetailCopyWith<$Res> {
  factory $ShowRestaurantDetailCopyWith(ShowRestaurantDetail value,
          $Res Function(ShowRestaurantDetail) then) =
      _$ShowRestaurantDetailCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});
}

/// @nodoc
class _$ShowRestaurantDetailCopyWithImpl<$Res>
    extends _$RestaurantDetailStateCopyWithImpl<$Res>
    implements $ShowRestaurantDetailCopyWith<$Res> {
  _$ShowRestaurantDetailCopyWithImpl(
      ShowRestaurantDetail _value, $Res Function(ShowRestaurantDetail) _then)
      : super(_value, (v) => _then(v as ShowRestaurantDetail));

  @override
  ShowRestaurantDetail get _value => super._value as ShowRestaurantDetail;

  @override
  $Res call({
    Object restaurant = freezed,
  }) {
    return _then(ShowRestaurantDetail(
      restaurant == freezed ? _value.restaurant : restaurant as Restaurant,
    ));
  }
}

/// @nodoc
class _$ShowRestaurantDetail implements ShowRestaurantDetail {
  const _$ShowRestaurantDetail(this.restaurant) : assert(restaurant != null);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'RestaurantDetailState.showRestaurantDetail(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowRestaurantDetail &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  $ShowRestaurantDetailCopyWith<ShowRestaurantDetail> get copyWith =>
      _$ShowRestaurantDetailCopyWithImpl<ShowRestaurantDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialDetail(),
    @required TResult loadingDetail(),
    @required TResult showRestaurantDetail(Restaurant restaurant),
    @required TResult failedShowDetail(String message),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return showRestaurantDetail(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialDetail(),
    TResult loadingDetail(),
    TResult showRestaurantDetail(Restaurant restaurant),
    TResult failedShowDetail(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showRestaurantDetail != null) {
      return showRestaurantDetail(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialDetail(InitialDetail value),
    @required TResult loadingDetail(LoadingDetail value),
    @required TResult showRestaurantDetail(ShowRestaurantDetail value),
    @required TResult failedShowDetail(FailedShowDetail value),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return showRestaurantDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialDetail(InitialDetail value),
    TResult loadingDetail(LoadingDetail value),
    TResult showRestaurantDetail(ShowRestaurantDetail value),
    TResult failedShowDetail(FailedShowDetail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showRestaurantDetail != null) {
      return showRestaurantDetail(this);
    }
    return orElse();
  }
}

abstract class ShowRestaurantDetail implements RestaurantDetailState {
  const factory ShowRestaurantDetail(Restaurant restaurant) =
      _$ShowRestaurantDetail;

  Restaurant get restaurant;
  @JsonKey(ignore: true)
  $ShowRestaurantDetailCopyWith<ShowRestaurantDetail> get copyWith;
}

/// @nodoc
abstract class $FailedShowDetailCopyWith<$Res> {
  factory $FailedShowDetailCopyWith(
          FailedShowDetail value, $Res Function(FailedShowDetail) then) =
      _$FailedShowDetailCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailedShowDetailCopyWithImpl<$Res>
    extends _$RestaurantDetailStateCopyWithImpl<$Res>
    implements $FailedShowDetailCopyWith<$Res> {
  _$FailedShowDetailCopyWithImpl(
      FailedShowDetail _value, $Res Function(FailedShowDetail) _then)
      : super(_value, (v) => _then(v as FailedShowDetail));

  @override
  FailedShowDetail get _value => super._value as FailedShowDetail;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FailedShowDetail(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$FailedShowDetail implements FailedShowDetail {
  const _$FailedShowDetail(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RestaurantDetailState.failedShowDetail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailedShowDetail &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FailedShowDetailCopyWith<FailedShowDetail> get copyWith =>
      _$FailedShowDetailCopyWithImpl<FailedShowDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialDetail(),
    @required TResult loadingDetail(),
    @required TResult showRestaurantDetail(Restaurant restaurant),
    @required TResult failedShowDetail(String message),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return failedShowDetail(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialDetail(),
    TResult loadingDetail(),
    TResult showRestaurantDetail(Restaurant restaurant),
    TResult failedShowDetail(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failedShowDetail != null) {
      return failedShowDetail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialDetail(InitialDetail value),
    @required TResult loadingDetail(LoadingDetail value),
    @required TResult showRestaurantDetail(ShowRestaurantDetail value),
    @required TResult failedShowDetail(FailedShowDetail value),
  }) {
    assert(initialDetail != null);
    assert(loadingDetail != null);
    assert(showRestaurantDetail != null);
    assert(failedShowDetail != null);
    return failedShowDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialDetail(InitialDetail value),
    TResult loadingDetail(LoadingDetail value),
    TResult showRestaurantDetail(ShowRestaurantDetail value),
    TResult failedShowDetail(FailedShowDetail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failedShowDetail != null) {
      return failedShowDetail(this);
    }
    return orElse();
  }
}

abstract class FailedShowDetail implements RestaurantDetailState {
  const factory FailedShowDetail(String message) = _$FailedShowDetail;

  String get message;
  @JsonKey(ignore: true)
  $FailedShowDetailCopyWith<FailedShowDetail> get copyWith;
}
